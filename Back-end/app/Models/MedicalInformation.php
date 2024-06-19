<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MedicalInformation extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'allergies',
        'chronic_disease',
        'blood_type',
        'medications',
    ];

    /**
     * Get the user that owns the medical information.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
