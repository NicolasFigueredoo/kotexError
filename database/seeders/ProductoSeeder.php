<?php

use App\Models\Producto;
use Illuminate\Database\Seeder;

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
            ['nombre' => 'Producto 1', 'categoria' => 'Productos de linea', 'imagen' => '1.jpg'],
            ['nombre' => 'Producto 2', 'categoria' => 'Productos de linea', 'imagen' => '2.jpg'],
            ['nombre' => 'Producto 3', 'categoria' => 'Productos de linea', 'imagen' => '3.jpg'],
            ['nombre' => 'Producto 4', 'categoria' => 'Productos de linea', 'imagen' => '4.jpg'],
            ['nombre' => 'Producto 5', 'categoria' => 'Productos de linea', 'imagen' => '5.jpg'],
            ['nombre' => 'Producto 6', 'categoria' => 'Productos de linea', 'imagen' => '6.jpg'],
            ['nombre' => 'Producto 7', 'categoria' => 'Productos de linea', 'imagen' => '7.jpg'],
            ['nombre' => 'Producto 8', 'categoria' => 'Productos de linea', 'imagen' => '8.jpg'],
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
