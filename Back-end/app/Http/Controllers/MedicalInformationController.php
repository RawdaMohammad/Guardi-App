<?php

namespace App\Http\Controllers;

use App\Models\MedicalInformation;
use Illuminate\Http\Request;

class MedicalInformationController extends Controller
{
    /**
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $user = $request->user();

        // Check if user already has medical information
        if ($user->medicalInformation()->exists()) {
            return response()->json(['message' => 'Medical information already exists for this user'], 400);
        }

        // Validate request data and store medical information
        $validatedData = $request->validate([
            'allergies' => 'nullable|array',
            'chronic_disease' => 'nullable|array',
            'medications' => 'nullable|array',
        ]);

        $medicalInformation = new MedicalInformation([
            'allergies' => serialize($validatedData['allergies']),
            'chronic_disease' => serialize($validatedData['chronic_disease']),
            'medications' => serialize($validatedData['medications']),
            'blood_type' => $request->input('blood_type'),
        ]);

        $user->medicalInformation()->save($medicalInformation);

        return response()->json($medicalInformation, 201);
    }
}
