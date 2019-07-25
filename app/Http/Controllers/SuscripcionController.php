<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Suscripcion;
use App\Contacto;
use App\AgenteContacto;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class SuscripcionController extends Controller
{
    /**
     * Display a listing of the responseource.
     *
     * @return \Illuminate\Http\responseponse
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new responseource.
     *
     * @return \Illuminate\Http\responseponse
     */
    public function create(Request $request)
    {
        //
    }

    /**
     * Store a newly created responseource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\responseponse
     */
    public function store(Request $request)
    {
        //
        foreach(Contacto::where('id', $request->id_contacto)->get() as $key => $row){
            switch($request->opcion){
                case 'salud':
                    $suscrito = array('id_contactos' => $row->id, 'salud' => 1, 'vida' => 0, 'auto' => 0, 'hogar' => 0);
                break;
                case 'vida':
                    $suscrito = array('id_contactos' => $row->id, 'salud' => 0, 'vida' => 1, 'auto' => 0, 'hogar' => 0);
                break;
                case 'auto':
                    $suscrito = array('id_contactos' => $row->id, 'salud' => 0, 'vida' => 0, 'auto' => 1, 'hogar' => 0);
                break;
                case 'hogar':
                    $suscrito = array('id_contactos' => $row->id, 'salud' => 0, 'vida' => 0, 'auto' => 0, 'hogar' => 1);
                break;
            }
        }
        $suscripcion = Suscripcion::create($suscrito);
        if($suscripcion->wasRecentlyCreated){
            $result = DB::select("select min(id_agente) as id_agente from asignacion_agentes where numero = (select min(numero) from asignacion_agentes);");
            $agente = 0;
            foreach($result as $key => $row){
                $agente = $row->id_agente;
            }
            $contacto_suscrito = array('id_agente' => $agente, 'id_contacto' => $request->id_contacto, 'id_suscripcion' => $suscripcion->id);
            $agente_contacto = AgenteContacto::create($contacto_suscrito);
            if($agente_contacto->wasRecentlyCreated){
                $response = array();
                dd($suscripcion->id);
                $info = DB::select("select a.id, b.nombre_agencia as agencia, b.director, b.celular_director, b.correo_director, b.correo_agente, c.keyid, c.numero_documento as documento_cliente, concat(c.nombres,' ',c.apellidos) as nombre_cliente, c.celular as celular_cliente, c.correo as correo_cliente, d.salud, d.vida, d.hogar, d.auto from agentes_contactos as a inner join agentes as b on a.id_agente = b.id inner join contactos as c on a.id_contacto = c.id inner join suscripcions as d on a.id_suscripcion = d.id where a.id = '".$suscripcion->id."';");
                foreach($info as $key => $row){
                    /*if($row->salud){
                        $producto = 'Seguro de Salud/Allianz Medicall';
                    }
                    if($row->vida){
                        $producto = 'Seguro de vida';
                    }
                    if($row->hogar){
                        $producto = 'Seguro de hogar';
                    }
                    if($row->auto){
                        $producto = 'Seguro de vida';
                    }
                    $row->producto = $producto;
                    $response[] = $row;*/
                }
            } else {
                $response = false;
            }
        } else {
            $response = false;
        }
        $result = $response;
        //return response()->json($result);
    }

    /**
     * Display the specified responseource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\responseponse
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified responseource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\responseponse
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified responseource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\responseponse
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified responseource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\responseponse
     */
    public function destroy($id)
    {
        //
    }
}
