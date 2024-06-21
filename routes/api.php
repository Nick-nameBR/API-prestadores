<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\GeocodeController;
use App\Http\Controllers\PrestadorController;
use App\Http\Controllers\ServicoController;
use Illuminate\Routing\Route;

Route::post('login', [AuthController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);

Route::middleware('auth:api')->get('servicos', [ServicoController::class, 'index']);
Route::middleware('auth:api')->get('coordenadas/{endereco}', [GeocodeController::class, 'getCoordinates']);
Route::middleware('auth:api')->post('prestadores', [PrestadorController::class, 'search']);

