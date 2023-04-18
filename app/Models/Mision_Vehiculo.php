<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mision_Vehiculo extends Model
{
    use HasFactory;

    protected $table = 'mision_vehiculo';

    public function coordenadas()
    {
        return $this->hasMany(Coordenada::class);
    }
}
