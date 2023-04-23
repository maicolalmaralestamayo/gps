<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MarcaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_marca' => $this->id,
            'nomb' => $this->nombre,
            'obs' => $this->observacion, 
            'modelos' => Modelo2Resource::collection($this->modelos) 
        ]; 
    }
}
