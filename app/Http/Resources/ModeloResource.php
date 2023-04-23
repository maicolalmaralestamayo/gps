<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ModeloResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_modelo' => $this->id,
            'nomb' => $this->nombre,
            'descrip' => $this->descripcion,
            'id_marc' => $this->marca_id
        ];  
    }
}