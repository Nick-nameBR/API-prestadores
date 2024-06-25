<?php

namespace App\Http\Controllers;

use App\Models\Prestador;
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

        // Iniciar a query de Prestador com relação aos serviços
        $prestadoresQuery = Prestador::whereHas('servicos', function ($query) use ($servicoId) {
            $query->where('servico_id', $servicoId);
        });

        // Aplicar filtros se houver
        if (!empty($filtros)) {
            foreach ($filtros as $key => $value) {
                $prestadoresQuery->where($key, $value);
            }
        }

        // Aplicar ordenação se houver
        foreach ($ordenacao as $key => $value) {
            $prestadoresQuery->orderBy($key, $value);
        }

        // Obter os prestadores limitados pela quantidade solicitada
        $prestadores = $prestadoresQuery->take($quantidade)->get();

        // Obter os IDs dos prestadores para verificar status
        $prestadorIds = $prestadores->pluck('id')->toArray();

        // Verificar o status dos prestadores através de uma API externa
        $statusData = $this->getOnlineStatus($prestadorIds);

        // Adicionar status ao resultado dos prestadores
        foreach ($prestadores as $prestador) {
            $prestador->status = $statusData[$prestador->id] ?? 'offline';
        }

        return response()->json($prestadores);
    }

    public function getCoordinates(Request $request)
    {
        $request->validate([
            'endereco' => 'required|string',
        ]);

        $endereco = urlencode($request->input('endereco'));

        // Realizar a requisição para obter as coordenadas do endereço
        $response = Http::withBasicAuth('teste-Infornet', 'c@nsulta-dad0s-ap1-teste-Infornet#24')
                        ->get("https://teste-infornet.000webhostapp.com/api/endereco/geocode/{$endereco}");

        return response()->json($response->json());
    }

    // Método para obter status online/offline dos prestadores
    private function getOnlineStatus(array $prestadorIds)
    {
        $response = Http::withBasicAuth('teste-Infornet', 'c@nsulta-dad0s-ap1-teste-Infornet#24')
                        ->post('https://teste-infornet.000webhostapp.com/api/prestadores/online', [
                            'prestadores' => $prestadorIds,
                        ]);

        return $response->json();
    }
}
