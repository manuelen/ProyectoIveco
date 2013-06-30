<?php
					$bloque="<section class='tooltip_elemento' id='botones' mensaje='$torre'><a href='administrador2.php?ip=".$section['ip']."'><p>$section[nombre]</p></a></section> ";
					correo('','',$section['nombre'],$section['ip'],'error','si',$textos);
					mysql_query("update pantalla set estado='si' where ip='$section[ip]' and puerto='' and estado='falla'");
					mysql_query("update sonido set  repeticiones='0', estado='si' where ip='$section[ip]' and puerto='' and estado='falla'");	
					$control=mysql_fetch_array(mysql_query("select horad from controldeerrores where ip='$section[ip]' and puerto='' and horaa='0' and falla='si' order by codigo"));
					mysql_query("update controldeerrores set horaa='".date("g:i:s a")."', falla='no' where ip='$section[ip]' and puerto='' and horaa='0' and falla='si' order by codigo");
					$aplicaciones=mysql_query("select * from aplicaciones where ip='$section[ip]' and estado='Conectado'");
					$aplicacion=mysql_fetch_array($aplicaciones);		
					for($e=0;$e<$aplicacion;$e++) 
					{
						//si el ping retorna verdadero se verifica los puertos por telnet 
						$conecionpuerto[$e]=telnet($aplicacion['ip'],$aplicacion['puerto']);
						//los resultados retornados se verifican si son verdaderos o falsos
						if(($conecionpuerto[$e]=="bien")){
						correo($aplicacion['nombre'],$aplicacion['puerto'],$section['nombre'],$section['ip'],'error','si',$textos);
						mysql_query("update pantalla set estado='si' where ip='$section[ip]' and puerto='$aplicacion[puerto]' and estado='falla'");
						mysql_query("update sonido set estado='si',  repeticiones='0' where ip='$section[ip]'  and puerto='$aplicacion[puerto]' and estado='falla'");
						$control=mysql_fetch_array(mysql_query("select horad from controldeerrores where ip='$section[ip]' and puerto='$aplicacion[puerto]' and horaa='0' and falla='si' order by codigo"));
					mysql_query("update controldeerrores set falla='no', horaa='".date("g:i:s a")."' where ip='$section[ip]' and puerto='$aplicacion[puerto]' and horaa='0' and falla='si' order by codigo");
							}else{

					$pantalla=mysql_query("select * from pantalla where ip='$section[ip]' and puerto='$aplicacion[puerto]' and estado='si'");
					
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


    generate("<table><tr align='top'><td>"+texto+"</td> <td ><h2 id='alert' style='text-align:left'>!ALERTA! </h2></td></tr> <tr><td colspan='2'><p style=' line-height: 1em;'>Existe un error en la aplicación <?php echo $aplicacion['nombre']; ?> de Puerto: <?php echo $aplicacion['puerto'] ?> en el Servidor <?php echo $section['nombre']; ?> en la direcci\u00f3n IP:<?php echo $aplicacion['ip']; ?> a las <?php echo date("g:i:s a");?></p></td></tr></table>","<?php echo $pantallas['modoa'];?>","<?php echo $pantallas['ubicacion'];?>","<?php echo $pantallas['duracion'];?>");

  </script>
				
			
								<?php
								//cuadro color rojo en caso de qu sea falso el telnet
								$bloque="<section class='tooltip_elemento' id='botones1'  mensaje='$torre'><a href='administrador2.php?ip=".$section['ip']."'><p>$section[nombre]</p></a></section>";
								
								//en caso de Error enviar correo Siguiente codigo de correo..
								correo($aplicacion['nombre'],$aplicacion['puerto'],$section['nombre'],$section['ip'],'si','si',$textos);
								mysql_query("update pantalla set estado='falla' where ip='$aplicacion[ip]' and puerto='$aplicacion[puerto]' and estado='si'");
								mysql_query("update sonido set estado='falla' where ip='$section[ip]' and puerto='$aplicacion[puerto]' and estado='si'");
								$control=mysql_fetch_array(mysql_query("select count(*) from controldeerrores where ip='$section[ip]' and puerto='$aplicacion[puerto]' and horaa='0' and falla='si' order by codigo"));
						if($control[0]==0){
						$descripcion="Existe un Error en el servicio ".$aplicacion['nombre']." cuyo numero de puerto es: ".$aplicacion['puerto']." del servidor: ".$aplicacion['nombre']." ip: ".$aplicacion['ip']." el dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a");
						mysql_query("INSERT INTO `database`.`controldeerrores` (`ip`, `puerto`, `descripcion`, `ping`, `fecha`, `horad`, `horaa`, `falla`) VALUES ('$section[ip]', '$aplicacion[puerto]', '$descripcion', '".($section['ping']-$conecionip[$i])."', '".date("y/m/d")."', '".date("g:i:s a")."', '0','si')");	
						}		
							}
							
						
						$aplicacion=mysql_fetch_array($aplicaciones);
					}
?>