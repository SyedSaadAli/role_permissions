<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // Lists all users
    public function list()
    {
        $data['getRecord'] = User::getRecord(); // Fetch all users
        return view('panel.user.list', $data);
    }

    // Loads view to add a new user
    public function add()
    {
        $data['getRole'] = Role::getRecord(); // Fetch roles
        return view('panel.user.add', $data);
    }

    // Inserts a new user record
    public function insert(Request $req)
    {
        $save = new User;
        $save->name = $req->name; // Set user name
        $save->email = $req->email; // Set user email
        $save->password = $req->password; // Set user password
        $save->role_id = trim($req->role_id); // Set user role
        $save->save(); // Save new user
        return redirect('panel/user')->with('success', 'User successfully created');
    }

    // Loads user edit view with roles
    public function edit($id)
    {
        $data['getRecord'] = User::getSingle($id); // Fetch user by ID
        $data['getRole'] = Role::getRecord(); // Fetch roles
        return view('panel.user.edit', $data);
    }

    // Updates an existing user
    public function update(Request $req, $id)
    {
        $save = User::getSingle($id);
        $save->name = $req->name; // Update user name
        $save->email = $req->email; // Update user email
        if (!empty($req->password)) {
            $save->password = $req->password;
        } // Update password if provided
        $save->role_id = trim($req->role_id); // Update user role
        $save->save(); // Save updates
        return redirect('panel/user')->with('success', 'User successfully updated');
    }

    // Deletes a user
    public function delete($id)
    {
        $save = User::getSingle($id); // Fetch user by ID
        $save->delete(); // Delete user
        return redirect('panel/user')->with('success', 'User successfully deleted');
    }
}
