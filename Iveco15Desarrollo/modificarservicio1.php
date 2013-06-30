<?php
include ('funciones.php');
require('conexion.php');

	$ip=$_POST['ip'];
	$ip1=$_POST['ip1'];
	$nombre=$_POST['nombre'];
	$tipo=$_POST['tipo'];
	$descripcion=$_POST['descripcion'];
	$estado=$_POST['estado'];
	$ping=$_POST['ping'];
	$red=$_POST['red'];
	
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
				
	$sql= "UPDATE  `database`.`dispositivos` SET `ip`='$ip' ,  `nombre`='$nombre',`tipo`='$tipo', `descripcion`='$descripcion',`estado`= '$estado', `ping`= '$ping', `red`= '$red' WHERE `dispositivos`.`ip`= '$ip1' ";

	$sq=mysql_query($sql);
	
	$insertsonido= "UPDATE `sonido` SET `estado`= '$sonido' where ip='$ip' and puerto=''";
	$sqll=mysql_query($insertsonido);	
	
	$insertpantalla= "UPDATE `pantalla` SET `estado`= '$pantalla' where ip='$ip' and puerto = ''";
	$sqlll=mysql_query($insertpantalla);
	
	$insertcorreo= "UPDATE `correo` SET `estado`= '$correo' where ip= '$ip' and puerto = '' ";
	$sqllll=mysql_query($insertcorreo);
	
	
	if ($sq==1){ 
	$response = "Modificación Exitosa";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Modificar Dispositivo de IP: ".$ip1." a IP $ip Nombre $nombre, Tipo $tipo,ping $ping ,Red $red', '".date("y/m/d")."', '".date("g:i:s a")."')");
	}else{
	  $response = "Error al Modificar Verifique IP";
    echo json_encode($response);

	}
	?>
	