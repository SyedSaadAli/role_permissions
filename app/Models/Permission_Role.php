<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission_Role extends Model
{
    use HasFactory;

    protected $table = 'permission_roles'; // Defines table name

    // Inserts or updates permissions for a role
    static public function InsertUpdateRecord($permission_ids, $role_id)
    {
        Permission_Role::where('role_id', '=', $role_id)->delete(); // Clear existing permissions
        foreach ($permission_ids as $permission_id) { // Assign new permissions
            $save = new Permission_Role();
            $save->permission_id = $permission_id;
            $save->role_id = $role_id;
            $save->save();
        }
    }

    // Retrieves permissions assigned to a role
    static public function getRolePermission($role_id)
    {
        return Permission_Role::where('role_id', '=', $role_id)->get();
    }

    // Checks if a role has a specific permission
    static public function getPermission($slug, $role_id)
    {
        return Permission_Role::select('permission_roles.id')
            ->join('permissions', 'permissions.id', '=', 'permission_roles.permission_id')
            ->where('permission_roles.role_id', '=', $role_id)
            ->where('permissions.slug', '=', $slug)
            ->count(); // Returns count of matching permissions
    }
}
