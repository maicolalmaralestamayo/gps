<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CoordenadaFactory extends Factory
{
    public function definition()
    {
        return [
            'mision_vehiculo_id' => 1,
            'tiempo' => $this->faker->dateTime(),
            'latitud' => $this->faker->latitude(),
            'longitud' => $this->faker->longitude()
        ];
    }
}
