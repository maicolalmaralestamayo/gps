<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('vehiculos', function (Blueprint $table) {
            $table->id();
            $table->string('matricula', '7')->unique()->nullable();
            $table->unsignedDecimal('capacidad')->nullable();
            $table->timestamps();
        });

        Schema::create('misions', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', 100);
            $table->string('descripcion')->nullable();
            $table->string('observación')->nullable();
            $table->unsignedInteger('vehiculos')->nullable();
            $table->unsignedDecimal('tiempo')->nullable();
            $table->dateTime('inicio_planif')->nullable();
            $table->dateTime('inicio_real')->nullable();
            $table->dateTime('final_planif')->nullable();
            $table->dateTime('final_real')->nullable();
            $table->timestamps();
        });

        Schema::create('mision_vehiculo', function (Blueprint $table) {
            $table->id();
            $table->string('cuentamillas_salida', 50)->nullable();
            $table->string('cuentamillas_entrada', 50)->nullable();
            $table->unsignedDecimal('combustible_salida')->nullable();
            $table->unsignedDecimal('combustible_entrada')->nullable();
            $table->dateTime('salida')->nullable();
            $table->dateTime('entrada')->nullable();
            $table->timestamps();
        });

        Schema::create('coordenadas', function (Blueprint $table) {
            $table->id();
            // $table->unsignedBigInteger('mision_vehiculo_id')->nullable()->default(1);
            $table->dateTime('fechahora')->default(today());
            $table->double('latitud')->default(0);
            $table->double('longitud')->default(0);
            $table->boolean('estado')->default(false);
            $table->string('observacion')->nullable();
            $table->timestamps();
        });

        Schema::create('marcas', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', '50')->unique();
            $table->string('descripcion', '50')->nullable();
            $table->timestamps();
        });

        Schema::create('modelos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', '50')->unique();
            $table->string('descripcion', '50')->nullable();
            $table->timestamps();
        });

        Schema::create('colors', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', '50')->unique();
            $table->string('descripcion', '50')->nullable();
            $table->timestamps();
        });

        Schema::create('combustibles', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', '50')->unique();
            $table->string('descripcion', '50')->nullable();
            $table->timestamps();
        });

        //ciclomotor, camión, carro ligera, carga, pasajero
        Schema::create('tipos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', '50')->unique();
            $table->string('descripcion', '50')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('vehiculos');
        Schema::dropIfExists('misions');
        Schema::dropIfExists('mision_vehiculo');
        Schema::dropIfExists('coordenadas');

        Schema::dropIfExists('marcas');
        Schema::dropIfExists('modelos');
        Schema::dropIfExists('tipos');
        Schema::dropIfExists('combustibles');
        Schema::dropIfExists('colors');
    }
};
