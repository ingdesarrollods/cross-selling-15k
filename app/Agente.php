l<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agente extends Model
{
    //
    protected $fillable = ['nombre_agencia', 'director', 'celular_director', 'correo_director', 'correo_agente'];
}
