<!DOCTYPE html class="h-100">
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Allianz</title>
	</head>
	<body>
		<h3>Estimado aliado {{ $data['agencia'] }}</h3>
		<p>Hemos adelantado una campaña dirigida a los participantes de la Carrera Allianz 15K con el fin de conocer su interés por los Seguros de Allianz.</p>
		<p>A continuación encontrará los datos de un potencial cliente que desea  ser contactado para adquirir nuestros productos.</p>
		<p>
			<ul>
				<li>Nombre y Apellidos: {{ $data['nombre_cliente'] }}</li>
				<li>Cédula: {{ $data['documento_cliente'] }}</li>
				<li>Celular: {{ $data['celular_cliente'] }}</li>
				<li>Mail: {{ $data['correo_cliente'] }}</li>
				<li>Producto de interés: {{ $data['producto'] }}</li>
			</ul>
		</p>
	</body>
</html>