<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail; 

class EmailController extends Controller
{
    //
    public function send(Request $request){
        foreach ($request->data as $key => $data) {
            $from   = $data['correo_cliente'];
            $name1  = $data['nombre_cliente'];
            $sub    = "Nueva solicitud de seguro";
            $to     = $data['correo_director'];
            $name2  = $data['director'];
            $cc     = $data['correo_agente'];
            Mail::send('email', ['data' => $data], function($msj) use($from, $name1, $sub, $to, $name2, $cc){
                $msj->from($from, $name1);
                $msj->subject($sub);
                $msj->to($to, $name2);
                $msj->cc($cc);
            });
            return redirect()->back();
        }
    }

    public function contacto(){
        $ok = 'ok';
        Mail::send('contacto', ['data' => '1'], function($msj) use($ok){
            $msj->from('jcortes@dayscript.com', 'Johan Cortes');
            $msj->subject('Mailing de pruebas');
            $msj->to('joco1204@gmail.com', 'Johan Cortes');
        });
        return redirect()->back();
    }
}
