<?php
include ('funciones.php');
require('conexion.php');

	$puerto=$_POST['puerto'];
	$nombre=$_POST['nombre'];
	$ip=$_POST['ip'];
	$tipo=$_POST['tipo'];
	$descripcion=$_POST['descripcion'];
	$estado=$_POST['estado'];

	if ($_POST['correo']=="undefined"){
			$correo='no';
		}else{
			$correo=$_POST['correo'];
			}
			
		 if ($_POST['pantalla']=="undefined"){
			$pantalla= 'no';
		}else{
			$pantalla=$_POST['pantalla'];
			}
			
		 if ($_POST['sonido']=="undefined"){
			$sonido='no';	
		}else{
			$sonido=$_POST['sonido'];
				}

	$sql= "INSERT INTO `database`.`aplicaciones` (`puerto`, `nombre`, `ip`, `tipo`, `descripcion`, `estado`) VALUES ('$puerto', '$nombre', '$ip', '$tipo', '$descripcion', '$estado')";
	$sq=mysql_query($sql);
	
		$insertsonido= "INSERT INTO `database`.`sonido` (`ip`, `puerto`, `sonido`, `duracion`, `repetir`, `repeticiones`, `volumen`, `estado`) VALUES ('$ip','$puerto' , 'Alert', '0', '1', '0', '0', '$sonido')";
	$sqll=mysql_query($insertsonido);	
	
	$insertpantalla= "INSERT INTO `pantalla`(`ip`, `puerto`, `modoa`, `ubicacion`, `duracion`, `ubicar`, `estado`) VALUES ('$ip','$puerto','error','center','10000','SI','$pantalla')";
	$sqll=mysql_query($insertpantalla);
	
	$icorreo=mysql_query("select * from usuario group by correo");
	$opcion=mysql_fetch_array($icorreo);
		
		for($i=0;$i<$opcion;$i++) 
		{	
		$insertcorreo= "INSERT INTO `database`.`correo` (`ip`, `puerto`, `correo`, `descripcion`, `estado`) VALUES ('$ip', '$puerto', '$opcion[correo]', '', '$correo')";
		$sqll=mysql_query($insertcorreo);

		
		
		$opcion=mysql_fetch_array($icorreo);
			}

	
	if ($sq==1){ 
	$response = "Registro Exitoso";
    echo json_encode($response);
		verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Registrar Servicio de IP: ".$ip." y Puerto ".$puerto."', '".date("y/m/d")."', '".date("g:i:s a")."')");
	}else{
	  $response = "Error al Registrar";
    echo json_encode($response);

	}

?>