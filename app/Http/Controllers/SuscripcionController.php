<?php

namespace App\Http\Controllers;

use App\Models\Suscripcion;
use Illuminate\Http\Request;

class SuscripcionController extends Controller
{
    public function agregarSuscripcion(Request $request)
    {
        $email = $request->email;
        $suscripcion = new Suscripcion();
        $suscripcion->email = $email;
        $suscripcion->save();

        return response()->json($email);

      
    }
}
