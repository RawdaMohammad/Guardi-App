<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function showProfile(Request $request)
    {
        $user = $request->user();

        // Retrieve specific fields and concatenate first name and last name
        $profileData = [
            'Fname' => $user->Fname,
            'Lname' => $user->Lname,
            'gender' => $user->gender,
            'dateofbirth' => $user->dateofbirth,
            'phone_number' => $user->phone_number,
            'profile_image' => $user->profile_image,
        ];

        return response()->json($profileData);
    }

    public function updateProfile(Request $request){
        $user = $request->user();

        $request->validate([
            'Fname' => 'string|max:255',
            'Lname' => 'string|max:255',
            'phone_number' => 'string|max:11',
            'profile_image' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($request->has('Fname')) {
            $user->Fname = $request->input('Fname');
        }
        if ($request->has('Lname')) {
            $user->Lname = $request->input('Lname');
        }
        if ($request->has('phone_number')) {
            $user->phone_number = $request->input('phone_number');
        }

        if ($request->hasFile('profile_image')) {
            $profileImage = $request->file('profile_image');
            $imagePath = $profileImage->store('profile_images','public');
            $user->profile_image = $imagePath;
        }
        $user->save();

        return response()->json(['message' => 'Profile updated successfully']);
    }
}
