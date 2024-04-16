<?php

use App\Http\Controllers\AplicacionController ;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/api/productosdelinea', [ProductoController::class, 'index']);
Route::get('/api/aplicaciones', [AplicacionController::class, 'index']);

