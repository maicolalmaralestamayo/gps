<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CombustibleResource extends JsonResource
{

    public function toArray($request)
    {
        return [
            'id_combustible' => $this->id,
            'nomb' => $this->nombre,
            'descrip' => $this->descripcion
        ];     }
}
