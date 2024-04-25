<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SliderHome extends Model
{
    use HasFactory;
    protected $table = 'slidershome';

    protected $fillable = ['orden','texto','imagen'];

   
}