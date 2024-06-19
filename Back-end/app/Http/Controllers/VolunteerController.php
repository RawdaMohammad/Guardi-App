<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VolunteerController extends Controller
{
    public function store(Request $request){
        // Validate the incoming request
        $request->validate([
            'id_front' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'id_back' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'self_photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Get the authenticated user
        $user = $request->user();

        // Get the uploaded files
        $idPhotoFront = $request->file('id_front');
        $idPhotoBack = $request->file('id_back');
        $selfPhoto = $request->file('self_photo');

        // Store the files in the storage directory
        $idPhotoFrontPath = $idPhotoFront->store('photos', 'public');
        $idPhotoBackPath = $idPhotoBack->store('photos', 'public');
        $volunteerPhotoPath = $selfPhoto->store('photos', 'public');

            // Create a new Volunteer record and associate it with the user
        $user->volunteer()->create([
            'id_front' => $idPhotoFrontPath,
            'id_back' => $idPhotoBackPath,
            'self_photo' => $volunteerPhotoPath,
        ]);

        // Return a JSON response indicating success
        return response()->json(['message' => 'Volunteer added successfully'], 201);
    }
}
