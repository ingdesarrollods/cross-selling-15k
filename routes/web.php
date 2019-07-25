<?php

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('{id}/{contacto}', function($id, $contacto){
	return View::make('allianz_aliado_experto',array('id' => $id, 'keyid' => $contacto));
});

Route::post('suscrito', 'SuscripcionController@store')->name('store');

Route::post('/email', 'EmailController@send')->name('send');

Route::get('/gracias', function(){
    return view('gracias');
});

Route::get('/contacto', function(){
    return view('contacto');
});

