<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Suscripcion;
use App\Contacto;

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
            $response = true;
        } else {
            $response = false;
        }
        $result = $response;
        return response()->json($result);
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
