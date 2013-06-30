<?php
require('conexion.php');

	$correo=$_REQUEST['correo'];
	
	$sql= "select * from usuario where correo='$correo'";
	$sq=mysql_query($sql);

	$correos=mysql_fetch_array($sq);
	if ($correos==true){ 

	$str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
	$contrasena = "";
	for($i=0;$i<12;$i++) {
	$contrasena .= substr($str,rand(0,62),1);
	}							
								$sheader="";
								$sheader=$sheader."X-Mailer:PHP/".phpversion()."\n";
								$sheader=$sheader."Mime-Version: 1.0\n";
								$sheader=$sheader."Content-Type: text/html";

	mail($correo,"Recuperar Contraseña Sr/a ".$correos['nombre'],"Sr/a ".$correos['nombre']." su usuario es: ".$correos['usuario']." \n Contraseña: ".$contrasena."\n el dia ".strftime("%A %d de %B del %Y")." <a href='http://localhost/dropbox/ProyectoIveco/iveco15Desarrollo/administrador.php'>aqui</a> a las ".date("g:i:s a"),$sheader); 
	
	$sql="UPDATE  `database`.`usuario` SET `contrasena` = MD5('$contrasena') WHERE  `usuario`.`correo` ='$correo'";
		$sq=mysql_query($sql);
	$response = "Correo Enviado Exitosamente";
    echo json_encode($response);

	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$correos[usuario]', 'Recupración de contraseña: via correo electronico', '".date("y/m/d")."', '".date("g:i:s a")."')");
	
	}else{
	  $response = "Correo no Registrado";
    echo json_encode($response);

	}
	?>
	