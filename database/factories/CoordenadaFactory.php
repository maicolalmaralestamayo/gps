<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CoordenadaFactory extends Factory
{
    public function definition()
    {
        return [
            // 'mision_vehiculo_id' => 1,
            'fechahora' => $this->faker->dateTimeThisMonth(),
            'latitud' => $this->faker->latitude(),
            'longitud' => $this->faker->longitude(),
            'estado' => true,
            'observacion' => $this->faker->text(100),
            'vehiculo_id' => random_int(1, 10)
        ];
    }
}
