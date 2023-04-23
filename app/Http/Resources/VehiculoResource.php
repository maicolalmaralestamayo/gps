<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class VehiculoResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_vehiculo' => $this->id,
            'tipo' => $this->tipo->nombre,
            'chapa' => $this->matricula,
            'tanque' => $this->capacidad,
            'marca' => $this->modelo->marca->nombre,
            'modelo' => $this->modelo->nombre,
            'color' => $this->color->nombre,
            'combustible' => $this->combustible->nombre,
            'obs' => $this->observacion
        ]; 
    }
}