<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgentesContactosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agentes_contactos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('id_agente');
            //$table->unsignedBigInteger('id_agente')->unsingned()->nullable();
            //$table->foreign('id_agente')->references('id')->on('agentes');
            $table->unsignedBigInteger('id_contacto');
            //$table->unsignedBigInteger('id_contacto')->unsingned()->nullable();
            //$table->foreign('id_contacto')->references('id')->on('contactos');
            $table->unsignedBigInteger('id_suscripcion');
            //$table->unsignedBigInteger('id_suscripcion')->unsingned()->nullable();
            //$table->foreign('id_suscripcion')->references('id')->on('suscripcions');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('agentes_contactos');
    }
}
