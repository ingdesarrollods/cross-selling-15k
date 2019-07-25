<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Mail; 

class EmailController extends Controller
{
    //
    public function send(Request $request){
        foreach ($request as $key => $data) {
            $from   = $data->correo_cliente;
            $name1  = $data->nombre_cliente;
            $sub    = "Nueva solicitud de seguro";
            $to     = $data->correo_director;
            $name2  = $data->director;
            $cc     = $data->correo_agente;
            Mail::send('email', ['data' => $data], function($msj) use($from, $name1, $sub, $to, $name2, $cc){
                $msj->from($from, $name1);
                $msj->subject($sub);
                $msj->to($to, $name2);
                $msj->cc($cc);
            });
        }
        return redirect()->back();
    }

    public function contacto(){
        $contacto = DB::table('contactos')->get();
        foreach($contacto as $key => $data){
            $correo = $data->correo;
            $nombre = $data->nombres." ".$data->apellidos;
            Mail::send('contacto', ['data' => $data], function($msj) use($correo, $nombre){
                $msj->from('no-reply@somosallianz.com', 'Allianz');
                $msj->subject('Conoce lo que Allianz tiene para ti');
                $msj->to($correo, $nombre);
            });
        }
        return redirect()->back();
    }
}
