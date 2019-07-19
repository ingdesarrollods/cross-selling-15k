<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sucripcion extends Model
{
    //
    protected $fillable = ['id_contactos', 'salud', 'vida', 'hogar', 'autos'];
}
