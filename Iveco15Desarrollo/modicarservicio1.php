<?php
include ('funciones.php');
require('conexion.php');

	$ip=$_POST['ip'];
	$ip1=$_POST['ip1'];
	$puerto1=$_POST['puerto1'];
	$puerto=$_POST['puerto'];
	$nombre=$_POST['nombre'];
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
				
	$sql= "UPDATE  `database`.`aplicaciones` SET `ip`='$ip',`puerto`='$puerto', `nombre` =  '$nombre' ,`tipo` =  '$tipo',`descripcion` =  '$descripcion',`estado` =  '$estado' WHERE  `aplicaciones`.`puerto` =  '$puerto1' AND  `aplicaciones`.`ip` =  '$ip1'";

	$sq=mysql_query($sql);
	
	$insertsonido= "UPDATE `sonido` SET `estado`= '$sonido',`ip`= '$ip',`puerto`= '$puerto' where ip='$ip1' and puerto='$puerto1'";
	$sqll=mysql_query($insertsonido);	
	
	$insertpantalla= "UPDATE `pantalla` SET `estado`= '$pantalla',`ip`= '$ip',`puerto`= '$puerto' where ip='$ip1' and puerto = '$puerto1'";
	$sqll=mysql_query($insertpantalla);
	
	$insertcorreo= "UPDATE `correo` SET `estado`= '$correo',`ip`= '$ip',`puerto`= '$puerto' where ip= '$ip1' and puerto = '$puerto1' ";
	$sqll=mysql_query($insertcorreo);

	if ($sq==1){ 
	$response = "Modificación Exitosa";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Modificar Servicio de IP: ".$ip1." a IP $ip, Puerto $puerto1 a $puerto Nombre $nombre, Tipo $tipo,descripcion $descripcion', '".date("y/m/d")."', '".date("g:i:s a")."')");
	}else{
	  $response = "Error al Modificar Verifique Puerto o IP";
    echo json_encode($response);

	}
	?>
	