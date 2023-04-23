<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ColorResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_color' => $this->id,
            'nomb' => $this->nombre,
            'descrip' => $this->descripcion
        ]; 
    }
}
