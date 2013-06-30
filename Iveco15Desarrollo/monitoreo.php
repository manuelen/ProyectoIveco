            <link href="javascript/A004.css" rel="stylesheet" type="text/css"/>
  <h2 align="center"> Monitoreando Servicios </h2>
            <br>
            <div class=centrar_tabla style="text-align:center;">
			<?php
			require("conexion.php");
		setlocale(LC_ALL,'spanish');
		require("PingYTelnet.php");
		//busqueda de dispositivos en la base de datos
			$dispositivos=mysql_query("select * from dispositivos where estado='Conectado' order by nombre ");
			$section=mysql_fetch_array($dispositivos);		
			for($i=0;$i<$section;$i++) 
			{	
			//se verifica los dispositivos por ping 
			$valor=1;
			list($ping, $textos)=ping($section['ip'],$section['nombre'],$valor,$section['red']);
				$conecionip[$i]=$ping;
				//tabla de tooltip de informacion
				include('tooltips.php');
				//los resultados retornados se verifican si son mayores que el 1/2 enviado
				if($conecionip[$i]==$valor){
					
					require('verificacion_puerto.php');
					
				}else{
					$valor=$section['ping']-1;
			//se verifica los dispositivos por ping 
			list($ping, $textos)=ping($section['ip'],$section['nombre'],$valor,$section['red']);
				$conecionip[$i]=$ping;
				//tabla de tooltip de informacion
				include('tooltips.php');
				//los resultados retornados se verifican si son mayores que el 1/2 enviado
				if($conecionip[$i]>=($section['ping']/2)){
					
					require('verificacion_puerto.php');

					}else{

					$pantalla=mysql_query("select * from pantalla where ip='$section[ip]' and puerto='' and estado='si'");
					$pantallas=mysql_fetch_array($pantalla);
	
					?>
		
			<script type="text/javascript" src="noty/js/noty/jquery.noty.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/center.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/topCenter.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/bottomCenter.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/bottomRight.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/centerRight.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/topRight.js"></script>
			 <script type="text/javascript" src="noty/js/noty/themes/default.js"></script>
			<script type="text/javascript">
					
    function generate(type, modo, ubicacion, duracion) {
  	var n = noty({
  		text: type,
  		type: modo,
        dismissQueue: true,
  		layout: ubicacion,
  		 theme: 'defaultTheme',
		 timeout: duracion 
		 		
  	});
	
  	  	console.log('html: '+n.options.id);
  }

  
   var texto="<img src='noty/notice.png' width='55' height='55' align='right'/>";

    generate("<table><tr align='top'><td>"+texto+"</td> <td ><h2 id='alert' style='text-align:left'>!ALERTA! </h2></td></tr> <tr><td colspan='2'><p style=' line-height: 1em;'>Existe un error en <?php echo $section['nombre']; ?> en la direcci\u00f3n <?php echo $section['ip']; ?> a las <?php echo date("g:i:s a");?></p></td></tr></table>","<?php echo $pantallas['modoa'];?>","<?php echo $pantallas['ubicacion'];?>","<?php echo $pantallas['duracion'];?>");
  </script>

  <?php
  
						//cuadro color rojo en caso de qu sea falso el ping
						$bloque="<section class='tooltip_elemento' id='botones1'  mensaje='$torre'><a href='administrador2.php?ip=".$section['ip']."'><p>$section[nombre]</p></a></section> ";
						////en caso de Error enviar correo Siguiente codigo de correo..
						correo("","",$section['nombre'],$section['ip'],'si','si',$textos);
						mysql_query("update pantalla set estado='falla' where ip='$section[ip]' and puerto='' and estado='si'");
						mysql_query("update sonido set estado='falla' where ip='$section[ip]' and puerto='' and estado='si'");
						$control=mysql_fetch_array(mysql_query("select count(*) from controldeerrores where ip='$section[ip]' and puerto='' and horaa='0' and falla='si' order by codigo"));
						if($control[0]==0){
							$descripcion="Existe un error en el Dispositivo: ".$section['nombre']." de ip: ".$section['ip']." el dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a");
						mysql_query("INSERT INTO `database`.`controldeerrores` (`ip`, `puerto`, `descripcion`, `ping`, `fecha`, `horad`, `horaa`, `falla`) VALUES ('$section[ip]', '', '$descripcion', '".($section['ping']-$conecionip[$i])."', '".date("y/m/d")."', '".date("g:i:s a")."', '0','si')");	
						}		
					}
					}
				echo $bloque;
				$section=mysql_fetch_array($dispositivos);
			}
			?>
            
            </div>
         <div id="slider"></div>
         <?php
		 $pantalla=mysql_query("select * from sonido inner join sonidopredeterminados on sonido.sonido = sonidopredeterminados.sonido where estado='falla' ");
		 $pantallas=mysql_fetch_array($pantalla);
		 if ($pantallas['estado']=='falla'){
			 if($pantallas['repetir']!=$pantallas['repeticiones']){ 
			 ?>
			 <audio id="audio" autoplay="">
  			 <source src="<?php echo $pantallas['ubicacion'];?>" />

			 </audio>
			 <?php mysql_query("update sonido set repeticiones=$pantallas[repeticiones]+1 where estado='falla'"); }}
		  $expandir= $_GET['expandir'];
		  if ($expandir!=1){
		  ?>
            <a id="pantallac" href="administrador.php" ><img  align="right" src="image/BOTON.png" /> </a>
<?php }
if ((date("g:i:s")>"12:00:00")&&(date("g:i:s")<"12:10:00")){
	$todo="/xampp/mysql/bin/mysqldump -u root -p123456 database > C:/xampp/htdocs/dropbox/ProyectoIveco/iveco15Desarrollo/basededatos/backups".date('y-m-d').".sql";
$pin = `$todo`;
	}
?>
