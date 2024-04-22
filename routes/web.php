<?php

use App\Http\Controllers\AplicacionController ;
use App\Http\Controllers\CategoriaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VariacionesController;

Route::get('/', function () {
    return view('welcome');
});



Route::get('/api/aplicaciones', [AplicacionController::class, 'index']);

//productos
Route::get('/api/obtenerProductos', [VariacionesController::class, 'index']);
Route::get('/api/obtenerProductosDeLinea', [VariacionesController::class, 'getProductosLinea']);
Route::get('/api/obtenerProductosEspeciales', [VariacionesController::class, 'getProductosEspeciales']);
Route::get('/api/obtenerInformacionProducto/{productoId}', [VariacionesController::class, 'obtenerInformacionProducto']);
Route::get('/api/obtenerNombresProducto/{categoriaId}', [VariacionesController::class, 'obtenerNombresProducto']);
Route::get('/api/obtenerMedidasProducto', [VariacionesController::class, 'obtenerMedidasProducto']);
Route::get('/api/obtenerColorProducto/{productoId}', [VariacionesController::class, 'obtenerColorProducto']);
Route::get('/api/obtenerUnidadVenta', [VariacionesController::class, 'obtenerUnidadVenta']);
Route::get('/api/obtenerProductosRelacionados/{categoriaId}', [VariacionesController::class, 'obtenerProductosRelacionados']);


//categorias
Route::get('/api/obtenerCategorias', [CategoriaController::class, 'index']);


