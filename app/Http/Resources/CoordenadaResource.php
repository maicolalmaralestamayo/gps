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
            'id_vehiculo' => $this->vehiculo->id,
            // 'id_vehiculo' => $this->mision_vehiculo->vehiculo_id,
            // 'id_mision' => $this->mision_vehiculo_id,

            'fechora'=> $this->fechahora,
            'lat' => $this->latitud,
            'long' => $this->longitud,
            'est' => $this->estado,
            'obs' => $this->observacion,
        ];    
    }
}
