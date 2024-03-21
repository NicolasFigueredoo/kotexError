<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\productoController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/api/productosdelinea', [productoController::class, 'index']);

