<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'user_id',
        'street_number',
        'street_name',
        'city',
        'state',
        'country',
        'postal_code',
        'latitude',
        'longitude',
    ];

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
