<?php
include ('funciones.php');
require('conexion.php');

	$sonido=$_POST['sonido'];
	$duracion=0;
	$repetir=$_POST['repeticiones'];
	$repeticiones=0;
	$volumen=0;

	$sql= "update sonido set sonido ='$sonido', duracion='$duracion', repetir='$repetir', repeticiones='$repeticiones', volumen='$volumen'";
	$sq=mysql_query($sql);
	
	if ($sq==1){ $res=1;
			verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Configurar Sonido', '".date("y/m/d")."', '".date("g:i:s a")."')"); 
	}else{ $res=2;}
	header("Location: sonido.php?res=$res" );
	?>