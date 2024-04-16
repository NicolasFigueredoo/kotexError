<?php

namespace Database\Seeders;

use App\Models\Aplicacion;
use App\Models\Producto;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
   
    public function run(): void
    {
        $this->call(ProductoSeeder::class);
        $this->call(AplicacionSeeder::class);

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        

    }

    
}


class ProductoSeeder extends Seeder
{
    /**
     * Seed the products table with dummy data.
     *
     * @return void
     */
    public function run()
    {
        // Ejemplo de creación de productos ficticios
        $productos = [
            ['nombre' => 'Elásticos de embutir', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '1.jpg'],
            ['nombre' => 'Cordones elásticos', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '2.jpg'],
            ['nombre' => 'Cinta rígida con reflectivo', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '3.jpg'],
            ['nombre' => 'Elásticos lurex', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '4.jpg'],
            ['nombre' => 'Elásticos negros', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '5.jpg'],
            ['nombre' => 'Elásticos con cordon', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '6.jpg'],
            ['nombre' => 'Elásticos con ojal', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '7.jpg'],
            ['nombre' => 'Elásticos partidos', 'categoria' => 'PRODUCTOS DE LINEA', 'imagen' => '8.jpg'],
        ];

        foreach ($productos as $producto) {
            Producto::create([
                'nombre' => $producto['nombre'],
                'categoria' => $producto['categoria'],
                'imagen' => $producto['imagen'],
            ]);
        }

      
    }
}

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
                'imagen' => $aplicacion['imagen'],
            ]);
        }

      
    }
}