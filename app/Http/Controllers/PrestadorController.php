<?php

namespace App\Http\Controllers;

use App\Models\Prestador;
use App\Models\Servico;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PrestadorController extends Controller
{
    public function index(Request $request)
    {
        // Validar e capturar parâmetros de entrada
        $request->validate([
            'origem_latitude' => 'required|numeric',
            'origem_longitude' => 'required|numeric',
            'destino_latitude' => 'required|numeric',
            'destino_longitude' => 'required|numeric',
            'servico_id' => 'required|exists:servicos,id',
            'quantidade' => 'required|integer|max:100',
            'ordenacao' => 'array',
            'filtros' => 'array',
        ]);

        $servicoId = $request->input('servico_id');
        $quantidade = $request->input('quantidade');
        $ordenacao = $request->input('ordenacao', []);
        $filtros = $request->input('filtros', []);

        $prestadores = Prestador::whereHas('servicos', function ($query) use ($servicoId) {
            $query->where('servico_id', $servicoId);
        });

        // Aplicar filtros
        if (!empty($filtros)) {
            foreach ($filtros as $key => $value) {
                $prestadores->where($key, $value);
            }
        }

        // Aplicar ordenação
        foreach ($ordenacao as $key => $value) {
            $prestadores->orderBy($key, $value);
        }

        $prestadores = $prestadores->take($quantidade)->get();

        // Checar status dos prestadores
        $prestadorIds = $prestadores->pluck('id');
        $response = Http::withBasicAuth('teste-Infornet', 'c@nsulta-dad0s-ap1-teste-Infornet#24')
                        ->post('https://teste-infornet.000webhostapp.com/api/prestadores/online', [
                            'prestadores' => $prestadorIds
                        ]);
        $statusData = $response->json();

        // Adicionar status ao resultado
        foreach ($prestadores as $prestador) {
            $prestador->status = $statusData[$prestador->id] ?? 'offline';
        }

        return response()->json($prestadores);
    }

    public function getCoordinates(Request $request)
    {
        $request->validate([
            'endereco' => 'required|string'
        ]);

        $endereco = $request->input('endereco');
        $response = Http::withBasicAuth('teste-Infornet', 'c@nsulta-dad0s-ap1-teste-Infornet#24')
                        ->get("https://teste-infornet.000webhostapp.com/api/endereco/geocode/{$endereco}");

        return response()->json($response->json());
    }
}
