<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\permission;
use Illuminate\Http\Request;
use App\Models\Permission_Role;
use Illuminate\Support\Facades\Auth;

class RoleController extends Controller
{
    // Retrieves role permissions and checks access, then loads role list view
    public function list()
    {
        $PermissionRole = Permission_Role::getPermission('Role', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $data['PermissionAdd'] = Permission_Role::getPermission('Add Role', Auth::user()->role_id);
        $data['PermissionEdit'] = Permission_Role::getPermission('Edit Role', Auth::user()->role_id);
        $data['PermissionDelete'] = Permission_Role::getPermission('Delete Role', Auth::user()->role_id);
        $data['getRecord'] = Role::getRecord(); // Get all roles
        return view('panel.role.list', $data);
    }

    // Checks permission to add roles and loads role add view
    public function add()
    {
        $PermissionRole = Permission_Role::getPermission('Role Add', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $data['getPermission'] = permission::getRecord(); // Get all permissions
        return view('panel.role.add', $data);
    }

    // Inserts new role with permissions
    public function insert(Request $req)
    {
        $PermissionRole = Permission_Role::getPermission('Add Role', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $save = new Role;
        $save->name = $req->name;
        $save->save(); // Save role
        Permission_Role::InsertUpdateRecord($req->permission_id, $save->id); // Assign permissions
        return redirect('panel/role')->with('success', 'Role successfully created');
    }

    // Loads role edit view with permissions if user has access
    public function edit($id)
    {
        $PermissionRole = Permission_Role::getPermission('Edit Role', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $data['getRecord'] = Role::getSingle($id); // Get role details
        $data['getPermission'] = permission::getRecord(); // Get all permissions
        $data['getRolePermission'] = Permission_Role::getRolePermission($id); // Get role permissions
        return view('panel.role.edit', $data);
    }

    // Updates role details and permissions
    public function update(Request $req, $id)
    {
        $PermissionRole = Permission_Role::getPermission('Edit Role', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $save = Role::getSingle($id);
        $save->name = $req->name;
        $save->save(); // Save updated role
        Permission_Role::InsertUpdateRecord($req->permission_id, $save->id); // Update permissions
        return redirect('panel/role')->with('success', 'Role successfully updated');
    }

    // Deletes role if user has delete permission
    public function delete($id)
    {
        $PermissionRole = Permission_Role::getPermission('Delete Role', Auth::user()->role_id);
        if (empty($PermissionRole)) {
            abort(404);
        } // Abort if no permission
        $save = Role::getSingle($id);
        $save->delete(); // Delete role
        return redirect('panel/role')->with('success', 'Role successfully deleted');
    }
}
