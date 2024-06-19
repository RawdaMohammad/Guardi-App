<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Relations\HasMany;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'Fname',
        'Lname',
        'email',
        'password',
        'gender',
        'dateofbirth',
        'phone_number',
        'verify_code',
        'expire_at',
        // 'mobile_verify_code',
        // 'mobile_attempts_left',
        // 'mobile_last_attempt_date',
        // 'mobile_verify_code_sent_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        // 'mobile_verify_code',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        // 'mobile_verify_code_sent_at' => 'datetime',
        // 'mobile_verified_at' =>'datetime',
        // 'mobile_last_attempt_date'=>'datetime',
    ];

    public function medicalInformation()
    {
        return $this->hasOne(MedicalInformation::class);
    }

    public function emergencyContacts(): HasMany
    {
        return $this->hasMany(EmergencyContacts::class);
    }

    public function volunteer()
    {
        return $this->hasOne(Volunteer::class);
    }

    public function generateCode(){
        $this->timestamps= false;
        $this->verify_code = rand(1000,9999);
        $this->expire_at = now()->addMinutes(15);
        $this->save();
    }

    public function resetCode(){
        $this->timestamps= false;
        $this->verify_code = null;
        $this->expire_at = null;
        $this->save();
    }
}
