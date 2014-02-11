<?php
include ('funciones.php');
require('conexion.php');

	$cedula=$_POST['cedula'];
	$nombre=$_POST['nombre'];
	$nivel=$_POST['nivel'];
	$descripcion=$_POST['descripcion'];
	$correo=$_POST['correo'];
	$contrasena=$_POST['contrasena'];
	$pregunta=$_POST['pregunta'];
	$respuesta=$_POST['respuesta'];
	
	
	$sql= "UPDATE  `database`.`usuario` SET  `nombre` =  '$nombre',
`nivel` =  '$nivel',
`descripcion` =  '$descripcion',
`correo` =  '$correo',
`contrasena` = MD5('$contrasena'),
`pregunta` =  '$pregunta',
`respuesta` =  '$respuesta' WHERE  `usuario`.`cedula` ='$cedula'";

	$sq=mysql_query($sql);
	
	if ($sq==1){ 
	$response = "Modificación Exitoso";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Modificar Usuario $usuario , de Cedula $cedula, Nombre $nombre, Nivel $nivel, Descripción $descripcion, Correo $correo', '".date("y/m/d")."', '".date("g:i:s a")."')");
		mail($correo,"Datos Modificados por el Administrador ".$_SESSION['nombre'],"Sr/a ".$nombre." su Datos han sido modificados por: ".$_SESSION['nombre']." sus datos ahora son: \n -Contraseña: = ".$contrasena."\n -Nivel: ".$nivel."\n -Correo: ".$correo."\n -Pregunta:".$pregunta." \n -Respuesta: ".$respuesta." \nel dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a")); 
	}else{
	  $response = "Error al Modificar";
    echo json_encode($response);

	}
	?>
	