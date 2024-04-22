<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('variacion_aplicacion', function (Blueprint $table) {
            $table->id();
            $table->foreignId('variacion_id')->constrained('variaciones');
            $table->foreignId('aplicacion_id')->constrained('aplicaciones');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('variacion_aplicacion');
    }
};
