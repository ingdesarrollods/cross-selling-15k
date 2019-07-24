<!DOCTYPE html class="h-100">
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="csrf-token" content="{{ csrf_token() }}">
		<title>{{ config('app.name') }}</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="{{asset('css/15k.css')}}">
		<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="{{asset('js/15k.js')}}"></script>
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-144503916-2"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());
			gtag('config', 'UA-144503916-2');
		</script>
	</head>
	<body>
		<div class="container-fluid">
			<input type="hidden" name="id" id="id" value="1">
			<input type="hidden" name="keyid" id="keyid" value="abcd1234">
			<div class="row">
				<div class="col col-lg-12" align="center">
					<img src="{{asset('img/header.jpg')}}" class="img-responsive" alt="header">
				</div>
			</div>
			<div style="height: 68px;"></div>
			<div class="row">
				<div class="col col-lg-12 text-center">
					<span class="fn">
						<h3>
							<b>Elige los productos que quieres. Encontrarás diferentes  beneficios, coberturas y asistencias con las que</b>
							<br>
							<b>podras contar en cada momento de tu vida.</b>
						</h3>							
					</span>
				</div>
			</div>
			<div style="height: 37px;"></div>
			<div class="row">
				<div class="col col-lg-12" align="center">
					<img src="{{asset('img/down.png')}}" class="img-responsive" alt="down">
				</div>
			</div>
			<div style="height: 37px;"></div>
			<div class="row">
				<div class="col col-lg-2"></div>
				<div class="col col-lg-2" align="center">
					<img src="{{asset('img/salud.png')}}" alt="salud">
					<div style="height: 46px;"></div>
					<span class="fn">
						<h4>
							<b>SEGURO DE SALUD</b>
						</h4>
					</span>
					<span class="fn">
						<h4>
							<b>ALLIANZ MEDICALL</b>	
						</h4>
					</span>
					<img src="{{asset('img/boton.png')}}" class="img-responsive cursos" alt="boton" id="salud">
					<div style="height: 10px;"></div>
				</div>
				<div class="col col-lg-2" align="center">
					<img src="{{asset('img/vida.png')}}" class="img-responsive" alt="vida">
					<div style="height: 46px;"></div>
					<span class="fn">
						<h4>
							<b>SEGURO DE VIDA</b>
						</h4>
					</span>
					<div style="height: 30px;"></div>
					<img src="{{asset('img/boton.png')}}" class="img-responsive cursos" alt="boton" id="vida">
					<div style="height: 10px;"></div>
				</div>
				<div class="col col-lg-2" align="center">
					<img src="{{asset('img/auto.png')}}" class="img-responsive" alt="auto">
					<div style="height: 46px;"></div>
					<span class="fn">
						<h4>
							<b>SEGURO DE AUTOS</b>
						</h4>
					</span>
					<div style="height: 30px;"></div>
					<img src="{{asset('img/boton.png')}}" class="img-responsive cursos" alt="boton" id="auto">
					<div style="height: 10px;"></div>
				</div>
				<div class="col col-lg-2" align="center">
					<img src="{{asset('img/hogar.png')}}" class="img-responsive" alt="hogar">
					<div style="height: 46px;"></div>
					<span class="fn">
						<h4>
							<b>SEGURO DE HOGAR</b>
						</h4>
					</span>
					<div style="height: 30px;"></div>
					<img src="{{asset('img/boton.png')}}" class="img-responsive cursos" alt="boton" id="hogar">
					<div style="height: 10px;"></div>
				</div>
				<div class="col col-lg-2"></div>
			</div>
			<div style="height: 135px;"></div>
			<div class="row" align="center">
				<div class="col col-lg-12">
					<span class="fn">
						<h3>Comunícate con nosotros</h3>
						<h4>
							Desde tu celular: <b>#265</b>&nbsp;&nbsp;&nbsp; Desde Bogotá: <b>5941133</b>&nbsp;&nbsp;&nbsp; Resto del pais: <b>01 8000 513 500</b>
						</h4>
					</span>
				</div>
			</div>
			<div style="height: 80px;"></div>
			<div class="row" align="center">
				<div class="col col-lg-1"></div>
				<div class="col col-lg-10">
					<span>
						<p>De acuerdo con la ley 1581 de 2012 y sus decretos reglamentarios sobre protección de datos personales, te informamos que tu dirección de correo electrónico y teléfono móvil está incluida en nuestra base de datos con el fin de ofrecerte información que consideramos de tu interés. Para información adicional consulta nuestra política de protección y privacidad haciendo <a href="#" style="color: #000;"><b>clic aquí</b></a></p>
					</span>
				</div>
				<div class="col col-lg-1"></div>
			</div>
			<div style="height: 50px;"></div>
			<div style="height: 60px;" class="bgfooter"></div>
		</div>
	</body>
</html>