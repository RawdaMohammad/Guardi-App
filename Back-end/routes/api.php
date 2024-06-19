<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\MedicalInformationController;
use App\Http\Controllers\EmergencyContactsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VolunteerController;

Route::post('auth/register', [RegisterController::class, 'register']);
Route::post('auth/login', [LoginController::class, 'login']);
Route::post('auth/verify', [RegisterController::class, 'verifyEmail']);
Route::post('auth/resend-code', [RegisterController::class, 'resendCode']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth.api')->group(function () {
    Route::post('medical-information', [MedicalInformationController::class, 'store']);
    Route::post('emergency-contacts', [EmergencyContactsController::class, 'store']);
    Route::get('/user-profile', [UserController::class, 'showProfile']);
    Route::post('user-profile/update',[UserController::class,'updateProfile']);
    Route::post('volunteers',[VolunteerController::class,'store']);
    // Route::get('volunteers/{id}', [VolunteerController::class, 'show']);
});
