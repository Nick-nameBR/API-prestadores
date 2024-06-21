<?php

namespace Database\Seeders;

use App\Models\Servico;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Prestador;

class PrestadoresTableSeeder extends Seeder
{
    public function run()
    {
        Prestador::factory()->count(25)->create()->each(function ($prestador) {
            $servicos = Servico::inRandomOrder()->take(3)->pluck('id');
            $prestador->servicos()->attach($servicos, [
                'km_saida' => rand(0, 50),
                'valor_saida' => rand(50, 200),
                'valor_por_km_excedente' => rand(5, 20)
            ]);
        });
    }
}