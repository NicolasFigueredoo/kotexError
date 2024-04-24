<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Usuario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function show(Request $request)
    {
        $usuario = $request->usuario;
        $contraseña = $request->contraseña;

        $user = Usuario::where('usuario', $usuario)->first();

        if ($user) {
            if (Hash::check($contraseña, $user->password)) {
                return response()->json(1);
            } else {
                return response()->json(['message' => 'Contraseña incorrecta']);
            }
        } else {
            return response()->json(['message' => 'Usuario no encontrado']);
        }
    }

    public function store(Request $request)
    {
        $usuario = $request->usuario;
        $email = $request->email;
        $contraseña = Hash::make($request->contraseña);

        $user = new Usuario();
        $user->usuario = $usuario;
        $user->email = $email;
        $user->password = $contraseña;
        $user->save();

        return response()->json($usuario);
    }

    public function update(Request $request, $id)
    {
        $usuario = $request->usuario;
        $contraseña = Hash::make($request->contraseña);

        $user = User::findOrFail($id);
        $user->name = $usuario;
        $user->password = $contraseña;
        $user->save();

        return response()->json($user);
    }

    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return response()->json(['message' => 'Usuario eliminado exitosamente']);
    }
}
