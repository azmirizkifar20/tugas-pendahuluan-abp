<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class SiteController extends Controller
{
    public function index()
    {
        // get session data
        $session = Session::get('USER_SESSION');

        if (!isset($session)) 
            return view('login', [
                'title' => 'Login Page'
            ]);

        return redirect('home');
    }

    public function home()
    {
        // get session data
        $session = Session::get('USER_SESSION');

        if (!isset($session))
            return redirect('login');

        return view('home', [
            'title' => 'Home Page',
            'data' => $session
        ]);
    }

    public function auth(Request $request)
    {
        // get post data
        $postData = $request->all();

        // set session
        Session::put('USER_SESSION',[
            'username' => $postData['username'],
            'password' => $postData['password'],
        ]);

        return redirect('home');
    }

    public function logout()
    {
        Session::remove('USER_SESSION');
        return redirect('login');
    }
}
