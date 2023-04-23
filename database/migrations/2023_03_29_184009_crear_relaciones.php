<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('modelos', function (Blueprint $table) {
            $table->foreignId('marca_id')->nullable()->constrained()->nullOnDelete();
        });

        Schema::table('vehiculos', function (Blueprint $table) {
            $table->foreignId('modelo_id')->nullable()->constrained()->nullOnDelete();
            $table->foreignId('color_id')->nullable()->constrained()->nullOnDelete();
            $table->foreignId('combustible_id')->nullable()->constrained()->nullOnDelete();
            $table->foreignId('tipo_id')->nullable()->constrained()->nullOnDelete();
        });

        Schema::table('mision_vehiculo', function (Blueprint $table) {
            $table->foreignId('vehiculo_id')->constrained()->cascadeOnDelete();
            $table->foreignId('mision_id')->constrained()->cascadeOnDelete();
            $table->unique(['vehiculo_id', 'mision_id']);
        });

        Schema::table('coordenadas', function (Blueprint $table) {
            // $table->foreign('mision_vehiculo_id')->references('id')->on('mision_vehiculo')->nullOnDelete();
            $table->foreignId('vehiculo_id')->nullable()->constrained()->nullOnDelete()->default(1);
        });
    }

    public function down()
    {
        //
    }
};
