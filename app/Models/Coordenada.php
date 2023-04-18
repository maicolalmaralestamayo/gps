<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coordenada extends Model
{
    use HasFactory;

    public function mision_vehiculo()
    {
        return $this->belongsTo(Mision_Vehiculo::class);
    }
}
