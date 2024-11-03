<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class AuthController extends Controller
{
    // Checks if user is authenticated; redirects to dashboard if true, otherwise loads login view
    public function login()
    {
        if (!empty(Auth::check())) {
            return redirect('panel/dashboard'); // Redirect if authenticated
        }
        return view('auth.login'); // Show login view
    }

    // Attempts to log the user in with email and password; redirects to dashboard if successful
    public function auth_login(Request $req)
    {
        $remember = !empty($req->remember) ? true : false; // Set "remember me" option
        if (Auth::Attempt(['email' => $req->email, 'password' => $req->password], $remember)) {
            return redirect('panel/dashboard'); // Redirect on success
        } else {
            return redirect()->back()->with('error', 'Please enter correct email and password'); // Show error on failure
        }
        return view('auth.login'); // Show login view
    }

    // Logs out the user and redirects to the homepage
    public function logout()
    {
        Auth::logout();
        return redirect(url('')); // Redirect to home
    }
}
