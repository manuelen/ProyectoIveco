<?php
require('conexion.php');
include ('funciones.php');
	$ip1=$_POST['ip1'];
	$ip2=$_POST['ip2'];
	$ip3=$_POST['ip3'];
	$ip4=$_POST['ip4'];
	$ip=$ip1.".".$ip2.".".$ip3.".".$ip4;
	$nombre=$_POST['nombre'];
	$tipo=$_POST['tipo'];
	$descripcion=$_POST['descripcion'];
	$estado=$_POST['estado'];
	$ping=$_POST['ping'];
	$red=$_POST['red'];
	$nombreServidor=gethostbyaddr($ip);
	if ($ping==0){
		$ping=4;
		}

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
	
	$sql= "INSERT INTO `database`.`dispositivos` (`ip`,`nombreServidor`, `nombre`, `tipo`, `descripcion`, `estado`, `ping`, `red`) VALUES ('$ip','$nombreServidor', '$nombre', '$tipo', '$descripcion', '$estado', '$ping', '$red')";
	$sq=mysql_query($sql);
	
	$insertsonido= "INSERT INTO `database`.`sonido` (`ip`, `sonido`, `duracion`, `repetir`, `repeticiones`, `volumen`, `estado`) VALUES ('$ip', 'Alerta', '0', '1', '0', '0', '$sonido')";
	$sqllll=mysql_query($insertsonido);	
	
	$insertpantalla= "INSERT INTO `pantalla`(`ip`, `puerto`, `modoa`, `ubicacion`, `duracion`, `ubicar`, `estado`) VALUES ('$ip','','error','center','10000','si','$pantalla')";
	$sqll=mysql_query($insertpantalla);
	
	$icorreo=mysql_query("select * from usuario group by correo");
	$opcion=mysql_fetch_array($icorreo);
		
		for($i=0;$i<$opcion;$i++) 
		{	
		$insertcorreo= "INSERT INTO `database`.`correo` (`ip`, `puerto`, `correo`, `descripcion`, `estado`) VALUES ('$ip', '', '$opcion[correo]', 'si', '$correo')";
		$sqlll=mysql_query($insertcorreo);

		
		
		$opcion=mysql_fetch_array($icorreo);
			}

	
	if ($sq==1){ 
	$response = "Registro Exitoso";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Registrar Dispositivo de IP: ".$ip."', '".date("d/m/y")."', '".date("g:i:s a")."')");
	}else{
	  $response = "Error al Registrar";
    echo json_encode($response);

	}

?>