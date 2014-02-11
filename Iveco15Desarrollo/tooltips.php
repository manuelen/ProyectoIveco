	<?php
        		$tooltip=mysql_query("select count(*) as 'tooltip' from aplicaciones where ip='$section[ip]'");
				$tooltips=mysql_fetch_array($tooltip);
				if($valor==1){
					$enviados = $valor;
					}else{
						$enviados = $section['ping'];
						}
				$torre="<table align=center cellpadding=7 bgcolor=#C1E0FF border=1 bordercolor=#FFFFFF frame=box style=text-align:left; >  

				<tr bgcolor=#000066 width=10px>
				<td colspan=4 align=center><b><font color=#FFFFFF size=+1> $section[nombre]</font></b></td>
				</tr>
				
				<tr>
				<td> <label>ip: </label> </td> 
				<td> <label>  $section[ip] </label> </td>
				<td> <label >Paquetes Enviados: </label> </td> 
				<td><label>  $enviados </label> </td>
				</tr> 
				
				
				<tr>
				<td> <label>Servidor: </label> </td> 
				<td> <label>  $section[nombreServidor] </label> </td>
				<td> <label >Paquetes Recibidos: </label> </td> 
				<td><label>  ".$conecionip[$i]."</label> </td>
				</tr> 
				
				<tr>
				<td> <label >Tipo: </label> </td> 
				<td><label> $section[tipo] </label> </td>
				<td> <label >Numero de Servicios: </label> </td> 
				<td><label>  $tooltips[tooltip] </label> </td>
				</tr> 

				</table> ";
				?>