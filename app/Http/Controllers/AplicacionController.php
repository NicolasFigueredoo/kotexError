<?php

namespace App\Http\Controllers;

use App\Models\Aplicacion;

class AplicacionController extends Controller
{
    public function index()
    {
        $aplicaciones = Aplicacion::all();
        return response()->json($aplicaciones);
    }
}
