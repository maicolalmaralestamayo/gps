<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Modelo2Resource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_modelo' => $this->id,
            'nomb' => $this->nombre
        ];  
    }
}
