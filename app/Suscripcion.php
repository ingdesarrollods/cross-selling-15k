<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suscripcion extends Model
{
    //
    protected $fillable = ['id_contactos', 'salud', 'vida', 'auto', 'hogar'];
}
