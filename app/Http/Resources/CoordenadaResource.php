<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;

class CoordenadaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_coordenada' => $this->id,
            'id_vehiculo' => $this->mision_vehiculo->vehiculo_id,
            'id_mision' => $this->mision_vehiculo_id,

            'datetime'=> $this->tiempo,
            'lat' => $this->latitud,
            'long' => $this->longitud
        ];    
    }
}
