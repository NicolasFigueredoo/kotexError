<?php

namespace App\Http\Controllers;

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
        

        Mail::to('gtyt@outlook.com.ar')->send(function ($message) use ($nombre, $apellido, $email, $celular, $mensaje) {
            $message->from($email, $nombre . ' ' . $apellido);
            $message->subject('Nuevo mensaje de contacto');
            $message->replyTo($email);
            $message->markdown('emails.contacto', [
                'nombre' => $nombre,
                'apellido' => $apellido,
                'email' => $email,
                'celular' => $celular,
                'mensaje' => $mensaje,
            ]);
        });

    


        return response()->json(['message' => 'Correo enviado correctamente']);
    }
}
