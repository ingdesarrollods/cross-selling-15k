<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contacto extends Model
{
    //
    protected $primaryKey = 'keyid';
    protected $fillable = ['keyid', 'numero_documento', 'nombres', 'apellidos', 'celular', 'correo'];
}
