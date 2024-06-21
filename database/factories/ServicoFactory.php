<?php

namespace Database\Factories;

use App\Models\Servico;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Servico>
 */
class ServicoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Servico::class;

    public function definition()
    {
        return [
            'nome' => $this->faker->word,
            'situacao' => $this->faker->randomElement(['ativo', 'inativo']),
        ];
    }
}
