<!DOCTYPE html class="h-100">
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="csrf-token" content="{{ csrf_token() }}">
		<title>{{ config('app.name') }}</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col col-lg-12" align="center">
					<img src="{{asset('img/header.jpg')}}" class="img-responsive" alt="header">
				</div>
			</div>
			<br>
		    <div class="row">
		        <div class="col col-lg-4 col-lg-offset-4" align="center">
					<div class="alert alert-success text-center">
						<h3>Registro exitoso<br>En un momento un asesor se comunicará contigo.</h3>
					</div>
		        </div>
		    </div>
		    <br>
		    <div class="row">
		    	<div class="col col-lg-12" align="center">
		    		<h3>Agradecemos la confianza que has depositado en nosotros</h3>
	            	<p>Gracias por registrarte, pronto serás contactado por tu asesor de seguros Allianz.</p>
	            	<p><strong>Te invitamos a seguir explorando Allianz.</strong></p>
		    	</div>
		    </div>
		    <br>
		    <div class="row">
		    	<div class="col col-lg-2 col-lg-offset-5" align="center">
		    		<a href="https://www.allianz.co/" id="ir-allianz" class="btn btn-primary btn-lg btn-block bg-allianz">Ir a allianz.co</a>
		    	</div>
		    </div>
		</div>
	</body>
</html>