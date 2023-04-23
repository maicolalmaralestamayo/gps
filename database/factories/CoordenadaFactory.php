<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CoordenadaFactory extends Factory
{
    public function definition()
    {
        return [
            // 'mision_vehiculo_id' => 1,
            'fechahora' => $this->faker->dateTime(),
            'latitud' => $this->faker->latitude(),
            'longitud' => $this->faker->longitude(),
            'estado' => true,
            'observacion' => $this->faker->text(),
            'vehiculo_id' => 1
        ];
    }
}
