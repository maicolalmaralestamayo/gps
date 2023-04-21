<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class VehiculoResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_vehiculo' => $this->id,
            'chapa' => $this->matricula,
            'tanque' => $this->capacidad,
        ]; 
    }
}