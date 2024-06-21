<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('servico_prestador', function (Blueprint $table) {
            $table->id();
            $table->foreignId('prestador_id')->constrained('prestadores');
            $table->foreignId('servico_id')->constrained('servicos');
            $table->decimal('km_saida');
            $table->decimal('valor_saida');
            $table->decimal('valor_por_km_excedente');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('servico_prestador');
    }
};
