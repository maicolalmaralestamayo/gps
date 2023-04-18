<?php

use App\Http\Controllers\CoordenadaController;
use Illuminate\Support\Facades\Route;

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::controller(CoordenadaController::class)->group(function(){
    Route::get('coordenadas/{mision}', 'index');
    Route::get('coordenadas/{mision}/ult/{cant}', 'index_ult');
    Route::post('coordenadas/{mision}', 'store');
    Route::delete('coordenadas/{mision}', 'destroy');
    Route::get('prueba', 'prueba');
});