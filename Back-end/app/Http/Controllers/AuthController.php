<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function show()
    {
        return view('auth.register');
    }
    public function register(Request $req)
    {
        // Get a validator for an incoming registration request.
        $rules = [
            'Fname' => ['required', 'string', 'max:255'],
            'Lname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'gender' => 'required|in:male,female',
            'phone_number' => ['required','string','max:11'],
            'dateofbirth' => ['required','date'],
        ];
        $validator = Validator::make($req->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->errors(),400);
        }

        //create new user in users table
        $user = User::create([
            'Fname' => $req['Fname'],
            'Lname' => $req['Lname'],
            'email' => $req['email'],
            'password' =>Hash::make($req['password']),
            'gender' => $req['gender'],
            'phone_number' => $req['phone_number'],
            'dateofbirth' => $req['dateofbirth'],
        ]);
        $token = $user->createToken('Personal Access Token')->plainTextToken;
        $response = ['user' => $user, 'token' => $token];
        return response()->json($response, 200);
    }

    public function login(Request $req)
    {
        // validate inputs
        $rules = [
        'email' => 'required',
        "password"=> 'required|string'
        ];
        $req->validate ($rules) ;
        // find user email in users table
        $user = User::where('email', $req->email)->first();
        // if user email found and password is correct
        if($user && Hash::check($req->password, $user->password)){
            $token = $user->createToken('Personal Access Token')->plainTextToken;
            $response=['user'=>$user,'token'=>$token];
            return response()->json ($response, 200);
        }
        $response =['message' => 'Incorrect email or password'];
        return response() ->json ($response,400);
    }
}