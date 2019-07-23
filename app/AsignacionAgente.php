<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AsignacionAgente extends Model
{
    //
    protected $table = 'asignacion_agentes';
    protected $fillable = ['id_agente', 'numero'];
}
