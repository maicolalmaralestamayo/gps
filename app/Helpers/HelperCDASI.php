<?php

namespace App\Helpers;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Http\Resources\Json\ResourceCollection;

class HelperCDASI {
    
    public static function data(ResourceCollection|JsonResource|null $data,
                                $state=true,
                                int $code=200,
                                $message='Operación realizada satisfactoriamente.'){

        return $data->additional([
            'state' => $state,
            'code' => $code,
            'message' => $message
        ])->response()->setStatusCode($code);
    }
}