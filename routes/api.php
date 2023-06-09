<?php

use App\Http\Controllers\ColorController;
use App\Http\Controllers\CombustibleController;
use App\Http\Controllers\CoordenadaController;
use App\Http\Controllers\MarcaController;
use App\Http\Controllers\MigracionController;
use App\Http\Controllers\ModeloController;
use App\Http\Controllers\TipoController;
use App\Http\Controllers\VehiculoController;
use Illuminate\Support\Facades\Route;

Route::controller(MigracionController::class)->group(function(){
    Route::get('migrar', 'migrar');
});

Route::controller(CoordenadaController::class)->group(function(){
    Route::get('coordenadas/{vehiculo}/all', 'index_all');
    Route::get('coordenadas/{vehiculo}/all/pag/{cant}', 'index_all_paginado');
    Route::get('coordenadas/{vehiculo}/cant/{cant}', 'index_cant');
    Route::get('coordenadas/{vehiculo}/dia/{dia}', 'index_dia');
    Route::get('coordenadas/{vehiculo}/rango/{ini}/{fin}', 'index_rango');

    Route::post('coordenadas', 'store');
    Route::post('coordenadas/storefile', 'storeFile');
    Route::delete('coordenadas/{vehiculo}', 'destroy_vehiculo');

    Route::delete('coordenadas/id/{coordenada}', 'destroy_coordenada');
    Route::get('coordenadas/id/{coordenada}', 'show');
});

Route::controller(VehiculoController::class)->group(function(){
    Route::get('vehiculos', 'index');
    Route::get('vehiculos/pag/{cant}', 'index_paginado');
    Route::get('vehiculos/{vehiculo}', 'show');
    Route::get('vehiculos/mat/{matricula}', 'show_matricula');
    
    Route::post('vehiculos', 'store');
    Route::put('vehiculos/{vehiculo}', 'update');
    Route::delete('vehiculos/{vehiculo}', 'destroy');
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

Route::controller(TipoController::class)->group(function(){
    Route::get('tipos', 'index');
    Route::get('tipos/{tipo}', 'show');

    Route::post('tipos', 'store');
    Route::put('tipos/{tipo}', 'update');
    Route::delete('tipos/{tipo}', 'destroy');
});