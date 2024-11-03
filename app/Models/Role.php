<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $table = 'Roles'; // Sets the database table

    // Retrieves a single role by ID
    public static function getSingle($id)
    {
        return Role::find($id);
    }

    // Retrieves all role records
    public static function getRecord()
    {
        return Role::get();
    }
}
