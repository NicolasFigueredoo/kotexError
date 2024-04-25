<?php

namespace App\Http\Controllers;

use App\Models\Aplicacion;
use App\Models\CategoriaHome;
use App\Models\SliderHome;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HomeController extends Controller
{
    //Sliders HOME
    public function obtenerSliders()
    {
        $sliders = SliderHome::all();
        return response()->json($sliders);
    }

    public function updateSlider(Request $request)
    {
        $slider = SliderHome::find($request->idSlider);
        $slider->orden = $request->orden;
        $slider->texto = $request->jsonCodigoSlider;

        if ($request->hasFile('foto')) {
          
            if (!Storage::exists('public/fotos')) {
                Storage::makeDirectory('public/fotos');
            }
        
            $photoPath = $request->file('foto')->store('fotos');
            $slider->imagen = $photoPath;
        }

        $slider->save();

        return response()->json(['message' => 'Datos subidos correctamente'], 200);

    }

    public function obtenerSliderHome($idSlider)
    {
        $slider = SliderHome::find($idSlider);
        return response()->json($slider);
    }

    //Categorias HOME
    public function obtenerCategorias()
    {
        $categorias = CategoriaHome::all();
        return response()->json($categorias);
    }

    public function updateCategoria(Request $request)
    {
        $categoria = CategoriaHome::find($request->idSlider);
        $categoria->orden = $request->orden;
        $categoria->texto = $request->jsonCodigoSlider;

        if ($request->hasFile('foto')) {
          
            if (!Storage::exists('public/fotos')) {
                Storage::makeDirectory('public/fotos');
            }
        
            $photoPath = $request->file('foto')->store('fotos');
            $categoria->imagen = $photoPath;
        }

        $categoria->save();

        return response()->json(['message' => 'Datos subidos correctamente'], 200);

    }

    public function obtenerCategoriaHome($idCategoria)
    {
        $categoria = CategoriaHome::find($idCategoria);
        return response()->json($categoria);
    }


}
