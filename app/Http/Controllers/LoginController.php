<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use App\services\business\SecurityService;

class LoginController extends Controller
{
    //to obtain an instance of the current HTTP request from post
    public function index(Request $request)
    {
        
        //create a userModel with username and password
        $credentials = new UserModel($request->get('user_name'), $request->get('password'));
        
        //Instatiate the Business logic layer
        $serviceLogin = new SecurityService();
        
        //pass the credentials to the business layer
        $isValid = $serviceLogin->login($credentials);
        
        //determine which view to display
        if($isValid)
        {
            return view('loginPassed');
        }
        else
        {
            return view('loginFailed');
        }
        //return view('loginPassed2');
       /* //put all the form values in an array called formValues
        $formvalues = $request->all();
        //getting just the username
        $userName = $request->input('username');
        $password = $request->input('password');
        return $request->all();*/
        
        
    }
}
