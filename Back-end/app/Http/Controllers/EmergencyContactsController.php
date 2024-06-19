<?php

namespace App\Http\Controllers;
use App\Models\EmergencyContacts;

use Illuminate\Http\Request;

class EmergencyContactsController extends Controller
{
    public function store(Request $request)
    {
        $user = $request->user(); // Retrieve authenticated user

        // Validate the incoming data for emergency contacts
        $validatedData = $request->validate([
            'emergency_contacts.*.full_name' => ['required', 'string', 'max:255'],
            'emergency_contacts.*.phone_number' => ['required', 'string', 'max:11'],
            'emergency_contacts.*.relationship_status' => ['string', 'max:255'],
        ]);

        // // Now you can safely access the emergencyContacts relationship
        // $maxPriorityNumber = $user->emergencyContacts()->max('priority_number') ?? 0;

        // foreach ($validatedData['emergency_contacts'] as $index => $request) {
        //     // Calculate the next priority number (1-based index)
        //     $priorityNumber = $maxPriorityNumber + 1 + $index;
        //     print($priorityNumber);

            // Create a new EmergencyContacts instance
            $emergencyContact = new EmergencyContacts([
                'user_id' => $user->id,
                'full_name' => $request['full_name'],
                'phone_number' => $request['phone_number'],
                'relationship_status' => $request['relationship_status'],
                // 'priority_number' => $priorityNumber,
            ]);

            print($user->id);
            // Save the emergency contact to the database
            $user->emergencyContacts()->save($emergencyContact);
        // }
        return response()->json($emergencyContact, 201);
    }
}
