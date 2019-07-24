<!DOCTYPE html class="h-100">
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Allianz</title>
	</head>
	<body cz-shortcut-listen="true">
		<!--table principal-->
        <table width="800" cellpadding="0" cellspacing="0" border="0" align="center">
            <tbody>
                <!--Logo and date-->
                <tr>
                    <td>
                    	<img
                            style="width:800px; display: block;"
                            src="{{asset('15k.somosallianz.com/img/mailing.jpg')}}"
                            alt="mailing"
                            border="0">
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>