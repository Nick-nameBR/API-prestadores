<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ServicoController;
use App\Http\Controllers\PrestadorController;

Route::post('login', [AuthController::class, 'authenticate']);

Route::middleware(['jwt.auth'])->group(function () {
    Route::get('servicos', [ServicoController::class, 'index']);
    Route::get('prestadores', [PrestadorController::class, 'index']);
    Route::get('prestadores/coordinates', [PrestadorController::class, 'getCoordinates']);
});
