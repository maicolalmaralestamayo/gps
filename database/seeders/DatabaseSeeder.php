<?php

namespace Database\Seeders;

use App\Models\Color;
use App\Models\Combustible;
use App\Models\Coordenada;
use App\Models\Marca;
use App\Models\Mision;
use App\Models\Mision_Vehiculo;
use App\Models\Modelo;
use App\Models\Tipo;
use App\Models\Vehiculo;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
       Color::factory(3)->create(); 
       Tipo::factory(3)->create();
       Combustible::factory(3)->create();
       Marca::factory(3)
            ->has(Modelo::factory()->count(3))
            ->create();
        Vehiculo::factory(100)->create();
        Mision::factory(3)->create();
        Mision_Vehiculo::factory(3)->create();
        Coordenada::factory(100)->create();
    }
}