<?php
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

for($i=90;$i<100;$i++){
	$sql= "INSERT INTO `database`.`aplicaciones` (`puerto`, `nombre`, `ip`, `tipo`, `descripcion`, `estado`) VALUES ('33".$i."', 'sapgw".$i."', '172.18.104.23', 'negosio', '', 'Conectado')";
	$sq=mysql_query($sql);
	
		$insertsonido= "INSERT INTO `database`.`sonido` (`ip`, `puerto`, `sonido`, `duracion`, `repetir`, `repeticiones`, `volumen`, `estado`) VALUES ('172.18.104.23','33".$i."' , 'rock', '0', '0', '0', '0', 'si')";
	$sqll=mysql_query($insertsonido);	
	
	$insertpantalla= "INSERT INTO `pantalla`(`ip`, `puerto`, `modoa`, `ubicacion`, `duracion`, `ubicar`, `estado`) VALUES ('172.18.104.23','33".$i."','error','center','10000','SI','si')";
	$sqll=mysql_query($insertpantalla);
	
	$icorreo=mysql_query("select * from usuario group by correo");
	$opcion=mysql_fetch_array($icorreo);
		
		for($e=0;$e<$opcion;$e++) 
		{	
		$insertcorreo= "INSERT INTO `database`.`correo` (`ip`, `puerto`, `correo`, `descripcion`, `estado`) VALUES ('172.18.104.23', '33".$i."', '$opcion[correo]', '', 'si')";
		$sqll=mysql_query($insertcorreo);

		
		
		$opcion=mysql_fetch_array($icorreo);
			}
}
	
	if ($sq==1){ 
	$response = "Registro Exitoso";
    echo json_encode($response);
	}else{
	  $response = "Error al Registrar";
    echo json_encode($response);

	}

?>