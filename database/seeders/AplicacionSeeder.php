<?php

use App\Models\Aplicacion;
use Illuminate\Database\Seeder;

class AplicacionSeeder extends Seeder
{
    /**
     * Seed the products table with dummy data.
     *
     * @return void
     */
    public function run()
    {
        // Ejemplo de creación de productos ficticios
        $aplicaciones = [
            ['nombre' => 'trajes de baño', 'imagen' => 'trajesbaño.png'],
            ['nombre' => 'indumentaria deportiva', 'imagen' => 'indumentariadeportiva.png'],
            ['nombre' => 'uniformes', 'imagen' => 'uniformes.png'],
            ['nombre' => 'ciclismo', 'imagen' => 'ciclismo.png'],
            ['nombre' => 'ropa interior', 'imagen' => 'ropaInterior.png'],
            ['nombre' => 'ropa para ñiños', 'imagen' => 'ropaÑiños.png'],
            ['nombre' => 'sábanas ajustables', 'imagen' => 'sabanas.png'],
            ['nombre' => 'barbijo', 'imagen' => 'barbijo.png'],
        ];

        foreach ($aplicaciones as $aplicacion) {
            Aplicacion::create([
                'nombre' => $aplicacion['nombre'],
                'categoria' => $aplicacion['categoria'],
                'imagen' => $aplicacion['imagen'],
            ]);
        }

      
    }
}
