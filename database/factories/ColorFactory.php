<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ColorFactory extends Factory
{
    public function definition()
    {
        return [
            'nombre'=> $this->faker->colorName(),
            'observacion'=> $this->faker->text(50)
        ];
    }
}
