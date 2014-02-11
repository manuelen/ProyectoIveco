function registroip(){
			var tipe = "ip1=" +$("#ip1").val()+ "&ip2="+$("#ip2").val()+"&ip3="+$("#ip3").val()+"&ip4="+$("#ip4").val();
			$.post('buscador.php',tipe, function(result){
				
			if ((result=="Erronea")||(result=="Ocupada")){alert("verifique Direccion IP");
			}else{
				var datos = "ip1=" +$("#ip1").val()+ "&ip2="+$("#ip2").val()+"&ip3="+$("#ip3").val()+"&ip4="+$("#ip4").val()+"&nombre="+$("#nombre").val()+ "&tipo="+$("#tipo").val()+"&descripcion="+$("#descripcion").val()+"&estado="+$("#estado").val()+"&ping="+$("#ping").val()+ "&red="+$("#red").val()+"&sonido="+$("#sonido:checked").val()+"&pantalla="+$("#pantalla:checked").val()+"&correo="+$("#correo:checked").val();
				$.post('registrarip1.php',datos, function(result2) {if (result2!=="Registro Exitoso"){alert(result2);}else{alert(result2),$(location).attr('href',"registrarip.php");}},'json');
			}},'json');
        }
		
		$('#ip').live('click',function(){
			var tipe = "ip1=" +$("#ip1").val()+ "&ip2="+$("#ip2").val()+"&ip3="+$("#ip3").val()+"&ip4="+$("#ip4").val();
			$.post('buscador.php',tipe, function(result){alert("Direccion IP "+result);},'json');
			});
			
		$('#tipo1').live('click',function(){
			 $('#add').toggle('show');
			 
			});
			$('#envi').live('click',function(){
				 $.post('tipodispositivo.php','tipo='+$("#text").val(),function(result){
					 alert(result);	 });
					  $("select#tipo").load("dispositivocarga.php option");
					   $('#add').toggle('show');
				 });