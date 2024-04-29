<?php

use App\Http\Controllers\AplicacionController ;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\EmailsController;
use App\Http\Controllers\SuscripcionController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VariacionesController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ImagenController;
use App\Models\CategoriaHome;

Route::get('/', function () {
    return view('welcome');
});



Route::get('/api/aplicaciones', [AplicacionController::class, 'index']);

//productos
Route::get('/api/obtenerProductos', [VariacionesController::class, 'index']);
Route::get('/api/obtenerProductoName/{name}', [VariacionesController::class, 'obtenerProductosXname']);

Route::get('/api/obtenerProductosDeLinea', [VariacionesController::class, 'getProductosLinea']);
Route::get('/api/obtenerProductosEspeciales', [VariacionesController::class, 'getProductosEspeciales']);
Route::get('/api/obtenerProductosDestacados', [VariacionesController::class, 'getProductosDestacados']);

Route::get('/api/obtenerInformacionProducto/{productoId}', [VariacionesController::class, 'obtenerInformacionProducto']);
Route::get('/api/obtenerNombresProducto/{categoriaId}', [VariacionesController::class, 'obtenerNombresProducto']);
Route::get('/api/obtenerMedidasProducto', [VariacionesController::class, 'obtenerMedidasProducto']);
Route::get('/api/obtenerColorProducto/{productoId}', [VariacionesController::class, 'obtenerColorProducto']);
Route::get('/api/obtenerUnidadVenta', [VariacionesController::class, 'obtenerUnidadVenta']);
Route::get('/api/obtenerProductosIdAplicacion/{aplicacionId}', [VariacionesController::class, 'obtenerProductosIdAplicacion']);


//categorias
Route::get('/api/obtenerCategorias', [CategoriaController::class, 'index']);

//correos
Route::post('/enviarCorreo', [EmailsController::class, 'enviarCorreoContacto']);
Route::post('/api/enviarPresupuesto', [EmailsController::class, 'enviarPresupuesto']);


//suscripciones
Route::post('/api/agregarSuscripcion', [SuscripcionController::class, 'agregarSuscripcion']);

//usuarios
Route::post('/api/crearUsuario', [UserController::class, 'store']);
Route::post('/api/verificarLogin', [UserController::class, 'show']);


//ADMIN

//SECCION HOME
Route::get('/api/obtenerSliders', [HomeController::class, 'obtenerSliders']);
Route::post('/api/updateSlider', [HomeController::class, 'updateSlider']);
Route::get('/api/obtenerSliderHome/{idSlider}', [HomeController::class, 'obtenerSliderHome']);

//getimagen
Route::get('/api/getImage/{fileName}', [ImagenController::class, 'getImage']);

//categorias
Route::get('/api/obtenerCategoriasHome', [HomeController::class, 'obtenerCategorias']);
Route::post('/api/updateCategoriaHome', [HomeController::class, 'updateCategoria']);
Route::get('/api/obtenerCategoriaHome/{idCategoria}', [HomeController::class, 'obtenerCategoriaHome']);

//usuarios
Route::get('/api/obtenerUsuarios', [UserController::class, 'obtenerUsuarios']);
Route::get('/api/obtenerIdUsuario/{idUsuario}', [UserController::class, 'obtenerUsuario']);
Route::post('/api/updateUsuario', [UserController::class, 'update']);
Route::get('/api/deleteUsuario/{idUsuario}', [UserController::class, 'destroy']);

//suscripciones
Route::get('/api/obtenerSuscripciones', [HomeController::class, 'obtenerSuscripciones']);
Route::post('/api/enviarMensajeSub', [EmailsController::class, 'enviarMensajeSub']);

//contactos
Route::get('/api/obtenerContacto', [HomeController::class, 'obtenerContacto']);
Route::post('/api/updateContacto', [HomeController::class, 'updateContacto']);


//logos
Route::get('/api/obtenerLogos', [HomeController::class, 'obtenerLogos']);

Route::get('/api/obtenerLogo/{idLogo}', [HomeController::class, 'obtenerLogo']);
Route::post('/api/updateLogo', [HomeController::class, 'updateLogo']);


