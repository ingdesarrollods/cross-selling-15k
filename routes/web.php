<?php

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/allianz-aliado-experto/contacto/{contacto}', function(){
	return View::make('allianz_aliado_experto');
});

Route::post('suscrito', 'SuscripcionController@store')->name('store');

Route::post('email', 'EmailController@send')->name('send');

Route::get('/gracias', function(){
    return view('gracias');
});

Route::get('/contacto', function(){
    return view('contacto');
});

