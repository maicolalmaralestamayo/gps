<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vehiculo extends Model
{
    use HasFactory;

    // hasta ahora un vehiculo está pintado de un solo color
    public function color()
    {
        return $this->belongsTo(Color::class);
    }

    public function modelo()
    {
        return $this->belongsTo(Modelo::class);
    }

    public function combustible()
    {
        return $this->belongsTo(Combustible::class);
    }

    public function tipo()
    {
        return $this->belongsTo(Tipo::class);
    }

}
