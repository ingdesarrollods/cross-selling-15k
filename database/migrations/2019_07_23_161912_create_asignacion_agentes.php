<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAsignacionAgentes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("CREATE VIEW asignacion_agentes AS SELECT a.id AS id_agente, COUNT(b.id) AS numero FROM agentes AS a LEFT JOIN agentes_contactos AS b ON a.id = b.id_agente GROUP BY a.id;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW asignacion_agentes;");
    }
}
