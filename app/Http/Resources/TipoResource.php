<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TipoResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_tipo' => $this->id,
            'nomb' => $this->nombre,
            'descrip' => $this->descripcion
        ]; 
    }
}
