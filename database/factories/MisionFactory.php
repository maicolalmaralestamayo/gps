<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class MisionFactory extends Factory
{
    public function definition()
    {
        return [
            'nombre' => $this->faker->text(100)
        ];
    }
}
