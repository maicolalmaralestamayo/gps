<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CombustibleFactory extends Factory
{
    public function definition()
    {
        return [
            'nombre'=> $this->faker->word(),
            'observacion'=> $this->faker->text(50)
        ];
    }
}
