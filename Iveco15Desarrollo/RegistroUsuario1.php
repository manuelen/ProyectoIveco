<?php
include ('funciones.php');
require('conexion.php');

	$cedula=$_POST['cedula'];
	$nombre=$_POST['nombre'];
	$nivel=$_POST['nivel'];
	$descripcion=$_POST['descripcion'];
	$correo=$_POST['correo'];
	$usuario=$_POST['usuario'];
	$contrasena=$_POST['contrasena'];
	$pregunta=$_POST['pregunta'];
	$respuesta=$_POST['respuesta'];
	
	$sql= "INSERT INTO `database`.`usuario` (`cedula`, `nombre`,`nivel`, `descripcion`, `correo`, `usuario`, `contrasena`, `pregunta`, `respuesta`) VALUES ('$cedula', '$nombre', '$nivel', '$descripcion', '$correo', '$usuario', MD5('$contrasena'), '$pregunta', '$respuesta')";
	$sq=mysql_query($sql);
	
	$icorreo=mysql_query("select * from pantalla order by ip");
	$opcion=mysql_fetch_array($icorreo);
		
		for($i=0;$i<$opcion;$i++) 
		{	
		$insertcorreo= "INSERT INTO `database`.`correo` (`ip`,`puerto`, `correo`, `descripcion`, `estado`) VALUES ('$opcion[ip]','$opcion[puerto]', '$correo', 'si', 'Si')";
		$sqll=mysql_query($insertcorreo);
				
		$opcion=mysql_fetch_array($icorreo);
			}

	if ($sq==1){ 
	$response = "Registro Exitoso";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Registro de Usuario ".$usuario." de Cedula: ".$cedula."', '".date("y/m/d")."', '".date("g:i:s a")."')");
	}else{
	  $response = "Error al Registrar";
    echo json_encode($response);

	}
	?>