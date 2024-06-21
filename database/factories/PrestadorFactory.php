<?php

namespace Database\Factories;

use App\Models\Prestador;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Prestador>
 */
class PrestadorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Prestador::class;

    public function definition()
    {
        return [
            'nome' => $this->faker->name,
            'logradouro' => $this->faker->streetName,
            'bairro' => $this->faker->citySuffix,
            'numero' => $this->faker->buildingNumber,
            'latitude' => $this->faker->latitude,
            'longitude' => $this->faker->longitude,
            'cidade' => $this->faker->city,
            'UF' => $this->faker->stateAbbr,
            'situacao' => $this->faker->randomElement(['online', 'offline']),
        ];
    }
}
