<?php

namespace App\Exceptions;

use App\Helpers\HelperCDASI;
use App\Http\Resources\ResCollCDASI;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

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

    // public function render($request, Throwable $exception)
    // {   
    //     return HelperCDASI::data(null, false, 500, $exception->getMessage());    
    // }
}