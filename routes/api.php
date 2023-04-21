<?php

use App\Http\Controllers\CoordenadaController;
use App\Http\Controllers\VehiculoController;
use Illuminate\Support\Facades\Route;

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::controller(CoordenadaController::class)->group(function(){
    Route::get('coordenadas/{mision}', 'index');
    Route::get('coordenadas/{mision}/ult/{cant}', 'index_ult');
    Route::post('coordenadas/{mision}', 'store');

    Route::delete('coordenadas/{mision}', 'destroy');
    Route::delete('coordenadas/id/{coordenada}', 'destroy_coordenada');
});

Route::controller(VehiculoController::class)->group(function(){
    Route::get('vehiculos', 'index');
    Route::get('vehiculos/cant/{cant}', 'index_paginado');
    Route::get('vehiculos/id/{vehiculo}', 'show');
    
    Route::post('vehiculos', 'store');
    Route::put('vehiculos/id/{vehiculo}', 'update');
    Route::delete('vehiculos/id/{vehiculo}', 'destroy_vehiculo');
});