<?php

use App\Http\Controllers\CoordenadaController;
use App\Http\Controllers\VehiculoController;
use Illuminate\Support\Facades\Route;

Route::controller(CoordenadaController::class)->group(function(){
    Route::get('coordenadas/{vehiculo}/all', 'index_all');
    Route::get('coordenadas/{vehiculo}/cant/{cant}', 'index_cant');
    Route::get('coordenadas/{vehiculo}/dia/{dia}', 'index_dia');
    Route::get('coordenadas/{vehiculo}/rango/{ini}/{fin}', 'index_rango');

    Route::post('coordenadas', 'store');
    Route::delete('coordenadas/{vehiculo}', 'destroy_vehiculo');

    Route::delete('coordenadas/id/{coordenada}', 'destroy_coordenada');
    Route::get('coordenadas/id/{coordenada}', 'show');
});

Route::controller(VehiculoController::class)->group(function(){
    Route::get('vehiculos', 'index');
    Route::get('vehiculos/cant/{cant}', 'index_paginado');
    Route::get('vehiculos/id/{vehiculo}', 'show');
    Route::get('vehiculos/mat/{matricula}', 'show_matricula');
    
    Route::post('vehiculos', 'store');
    Route::put('vehiculos/id/{vehiculo}', 'update');
    Route::delete('vehiculos/id/{vehiculo}', 'destroy_vehiculo');
});