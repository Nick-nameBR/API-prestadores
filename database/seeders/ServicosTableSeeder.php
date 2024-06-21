<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Servico;

class ServicosTableSeeder extends Seeder
{
    public function run()
    {
        Servico::factory()->count(10)->create();
    }
}
