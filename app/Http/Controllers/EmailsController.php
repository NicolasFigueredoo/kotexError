<?php

namespace App\Http\Controllers;

use App\Mail\ContactoMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class EmailsController extends Controller
{
    public function enviarCorreo(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
            'apellido' => 'required',
            'email' => 'required|email',
        ]);

            $nombre = $request->nombre;
            $apellido = $request->apellido;
            $email = $request->email;
            $celular = $request->celular;
            $mensaje = $request->mensaje;
        

            $mail = new ContactoMail($nombre, $apellido, $email, $celular, $mensaje);
            Mail::to('gtytptsp@gmail.com')->send($mail);


        return response()->json(['message' => 'Correo enviado correctamente']);
    }
}
