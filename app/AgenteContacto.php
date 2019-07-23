<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AgenteContacto extends Model
{
	//
    protected $table = 'agentes_contactos';
    protected $primaryKey = 'id';
    protected $fillable = ['id_agente', 'id_contacto', 'id_suscripcion'];

}
