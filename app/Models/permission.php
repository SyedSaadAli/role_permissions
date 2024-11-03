<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class permission extends Model
{
    use HasFactory;

    protected $table = 'permissions'; // Defines table name

    // Retrieves a single permission by ID
    public static function getSingle($id)
    {
        return Role::find($id);
    }

    // Retrieves all permissions, grouped by 'groupby' field
    public static function getRecord()
    {
        $getPermission = permission::groupBy('groupby')->get(); // Group permissions
        $result = array();
        foreach ($getPermission as $value) { // Process each group
            $getPermissionGroup = permission::getPermissionGroup($value->groupby); // Get grouped permissions
            $data = array();
            $data['id'] = $value->id;
            $data['name'] = $value->name;
            $group = array();
            foreach ($getPermissionGroup as $valueG) { // Format each permission in the group
                $dataG = array();
                $dataG['id'] = $valueG->id;
                $dataG['name'] = $valueG->name;
                $group[] = $dataG;
            }
            $data['group'] = $group; // Add grouped permissions to data
            $result[] = $data; // Append group to result
        }
        return $result;
    }

    // Retrieves all permissions within a specific group
    public static function getPermissionGroup($groupby)
    {
        return permission::where('groupby', '=', $groupby)->get();
    }
}
