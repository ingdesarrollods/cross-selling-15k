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
                        <div style="position: absolute;">
                            <a href="http://15k.somosallianz.com:8000/<?php echo base64_encode($data->id); ?>/<?php echo $data->keyid; ?>" target="_blank">
                                <div style="position: absolute; top: 660px;left: 230px; height: 50; width: 130px;"></div>    
                            </a>
                            </div>
                            <img
                            style="width:800px; display: block;"
                            src="{{asset('img/mailing.jpg')}}"
                            alt="mailing"
                            border="0">
                        </div>
                    	
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>