<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class MarcaFactory extends Factory
{
    public function definition()
    {
        return [
            'nombre'=> $this->faker->company(),
        ];
    }
}
