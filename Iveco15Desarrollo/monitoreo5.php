         
			<?php
			require("conexion.php");
		setlocale(LC_ALL,'spanish');
		//funcion correo

						$control=mysql_fetch_array(mysql_query("select horad from controldeerrores where ip='$section[ip]' and puerto='' and tiempoinactivo='0' and horaa='0' and falla='si' order by codigo"));
						
						$culito= (date("g:i:s a", strtotime("00:00:00") + strtotime(date("g:i:s a")) - strtotime("05:40:00") ));

							?>
						<script>
						
                        alert('<?php echo $culito;?>');
						</script>
						<?php
						