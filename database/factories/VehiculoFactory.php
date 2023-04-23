<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class VehiculoFactory extends Factory
{
    public function definition()
    {
        return [
            'matricula' => $this->faker->regexify('[BPEDKR][0-9]{6}'),
            'capacidad' => random_int(20, 100),
            'color_id' =>  random_int(1, 3),
            'modelo_id' =>  random_int(1, 3),
            'combustible_id' =>  random_int(1, 3),
            'tipo_id' =>  random_int(1, 3),
            'observacion'=> $this->faker->text(50)
        ];
    }
}