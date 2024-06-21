<?php

namespace App\Http\Controllers;

use App\Models\Prestador;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PrestadorController extends Controller
{
    public function search(Request $request)
    {
        $enderecoOrigem = $request->input('endereco_origem');
        $enderecoDestino = $request->input('endereco_destino');
        $servicoId = $request->input('servico_id');
        $quantidade = $request->input('quantidade', 100);
        $ordenacao = $request->input('ordenacao', []);
        $filtros = $request->input('filtros', []);

        $prestadores = Prestador::with(['servicos' => function($query) use ($servicoId) {
            $query->where('servico_id', $servicoId);
        }]);

        if (!empty($filtros)) {
            // Aplicar filtros
            foreach ($filtros as $filtro => $valor) {
                $prestadores->where($filtro, $valor);
            }
        }

        if (!empty($ordenacao)) {
            // Aplicar ordenação
            foreach ($ordenacao as $order) {
                $prestadores->orderBy($order);
            }
        }

        $prestadores = $prestadores->take($quantidade)->get();

        // Checar status dos prestadores
        $prestadoresIds = $prestadores->pluck('id')->toArray();
        $statusResponse = Http::withBasicAuth('teste-Infornet', 'c@nsulta-dad0s-ap1-teste-Infornet#24')
                            ->get('https://teste-infornet.000webhostapp.com/api/prestadores/online', [
                                'prestadores' => $prestadoresIds
                            ]);

        $status = $statusResponse->json();

        $prestadores->each(function($prestador) use ($status) {
            $prestador->status = $status[$prestador->id] ?? 'offline';
        });

        return response()->json($prestadores);
    }
}
