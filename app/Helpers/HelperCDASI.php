<?php

namespace App\Helpers;

use Illuminate\Http\Resources\Json\JsonResource;

class HelperCDASI {
    
    public static function data($data,
                                bool $state=true,
                                int $code=200,
                                string $message='Operación realizada satisfactoriamente.')
    {
        // if ($data == null){
        //     $data = new JsonResource(null);
        // };

        return $data
            ->additional([
                'state' => $state,
                'code' => $code,
                'message' => $message
            ])->response()->setStatusCode($code);
    }  
}