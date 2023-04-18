<?php

namespace App\Exceptions;

use App\Helpers\HelperCDASI;
use App\Http\Resources\ResCollCDASI;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;
use InvalidArgumentException;
use Throwable;

class Handler extends ExceptionHandler
{
    protected $dontReport = [
        //
    ];

    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    public function render($request, Throwable $exception)
    {   
    //     //error por defecto
    //     $code = 500;
    //     $message = 'Error desconocido. ['.$exception->getMessage().'] ['.get_class($exception).']';
        
    //     //errores logicos
    //     if ($exception instanceof InvalidArgumentException)
    //     {
    //         $code = 500;
    //         $message = 'Error(es) lógico(s). ['.$exception->getMessage().'] ['.get_class($exception).']';
    //     }
        
        //errores del modelo
        if ($exception instanceof ModelNotFoundException)
        {
            $code = 404;
            $message = 'Datos no encontrados. ['.$exception->getMessage().'] ['.get_class($exception).']';
        }

    //     //errores de validación
    //     if ($exception instanceof QueryException)
    //     {
    //         $code = 500;
    //         $message = 'Error en la consulta. ['.$exception->getMessage().'] ['.get_class($exception).']';;
    //     }

    //     //errores de validación
    //     if ($exception instanceof ValidationException)
    //     {
    //         $code = 422;  
    //         $message = $exception->errors();  
    //     }
        // return $exception->getMessage();

        return response([
            "data" => null,
            'state' => false,
            'code' => $code,
            'message' => $message
        ], $code);

        return $exception->getMessage();
        return HelperCDASI::data(null, false, 400, 'maicol');  
    }
}
