<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class Mision_VehiculoFactory extends Factory
{
    public function definition()
    {
        return [
            'vehiculo_id' => $this->faker->randomDigit(100),
            'mision_id' => 1
        ];
    }
}
