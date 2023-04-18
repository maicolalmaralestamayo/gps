<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class VehiculoFactory extends Factory
{
    public function definition()
    {
        return [
            'matricula' => $this->faker->regexify('[BP][0-9]{6}'),
            'capacidad' => 100,
        ];
    }
}