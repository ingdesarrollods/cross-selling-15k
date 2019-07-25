<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Allianz</title>
	</head>
	<body cz-shortcut-listen="true">
		<!--table principal-->
        <table width="800px" cellpadding="0" cellspacing="0" border="0" align="center">
            <tbody>
                <!--Logo and date-->
                <tr>
                    <td>
                        <img
                            style="width:800px; display: block;"
                            src="http://15k.somosallianz.com/img/mailing/header.png"
                            alt="mailing"
                            border="0">
                    </td>
                </tr>
                <tr style="height:112px;">
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <img
                            style="width:800px; display: block;"
                            src="http://15k.somosallianz.com/img/mailing/body.png"
                            alt="mailing"
                            border="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="http://15k.somosallianz.com/<?php echo base64_encode($data->id); ?>/<?php echo $data->keyid; ?>" target="_blank">
                            <img
                                style="width:800px; display: block;"
                                src="http://15k.somosallianz.com/img/mailing/boton.png"
                                alt="mailing"
                                border="0">
                        </a>
                    </td>
                </tr>
                <tr style="height:60px;">
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <table width="800px" cellpadding="0" cellspacing="0" border="0" align="center">
                            <tr>
                                <td>
                                    <a href="https://twitter.com/hashtag/SeguimosExplorando" target="_blank">
                                        <img
                                            style="width:400px; display: block;"
                                            src="http://15k.somosallianz.com/img/mailing/tag.png"
                                            alt="mailing"
                                            border="0">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://www.allianz.co/" target="_blank">
                                        <img
                                            style="width:400px; display: block;"
                                            src="http://15k.somosallianz.com/img/mailing/logo.png"
                                            alt="mailing"
                                            border="0">
                                    </a>
                                </td>
                            </tr>
                        </table>           
                    </td>
                </tr>
                <tr style="height:40px;">
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <a href="https://www.allianz.co/legales/politica-proteccion-datos/" target="_blank">
                            <img
                                style="width:800px; display: block;"
                                src="http://15k.somosallianz.com/img/mailing/footer.png"
                                alt="mailing"
                                border="0">
                        </a>
                    </td>
                </tr>
                <tr style="height:70px;">
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>