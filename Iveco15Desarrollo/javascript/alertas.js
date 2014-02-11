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