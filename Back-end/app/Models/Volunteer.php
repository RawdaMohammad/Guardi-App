<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Volunteer extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_front',
        'id_back',
        'self_photo',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
