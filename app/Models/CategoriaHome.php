<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoriaHome extends Model
{
    use HasFactory;
    protected $table = 'categoriashome';

    protected $fillable = ['orden','texto','imagen'];

   
}