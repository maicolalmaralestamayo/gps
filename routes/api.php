<?php

use App\Http\Controllers\ColorController;
use App\Http\Controllers\CombustibleController;
use App\Http\Controllers\CoordenadaController;
use App\Http\Controllers\MarcaController;
use App\Http\Controllers\ModeloController;
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

Route::controller(ModeloController::class)->group(function(){
    Route::get('modelos', 'index');
    Route::get('modelos/{model}', 'show');

    Route::post('modelos', 'store');
    Route::put('modelos/{model}', 'update');
    Route::delete('modelos/{model}', 'destroy');
});

Route::controller(MarcaController::class)->group(function(){
    Route::get('marcas', 'index');
    Route::get('marcas/{marca}', 'show');

    Route::post('marcas', 'store');
    Route::put('marcas/{marca}', 'update');
    Route::delete('marcas/{marca}', 'destroy');
});

Route::controller(ColorController::class)->group(function(){
    Route::get('colores', 'index');
    Route::get('colores/{color}', 'show');

    Route::post('colores', 'store');
    Route::put('colores/{color}', 'update');
    Route::delete('colores/{color}', 'destroy');
});

Route::controller(CombustibleController::class)->group(function(){
    Route::get('combustibles', 'index');
    Route::get('combustibles/{combustible}', 'show');

    Route::post('combustibles', 'store');
    Route::put('combustibles/{combustible}', 'update');
    Route::delete('combustibles/{combustible}', 'destroy');
});