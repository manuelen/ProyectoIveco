		function registrarpuerto(){
		var tipe = "ip="+$("#ip").val()+"&puerto=" +$("#puerto").val();
			$.post('buscador1.php',tipe, function(result){
			if (result!="Disponible"){
				alert("Verifique Puerto y Servidor");
				}else{
		var datos = "ip="+$("#ip").val()+"&puerto="+$("#puerto").val()+"&nombre="+$("#nombre").val()+"&tipo="+$("#tipo").val()+"&descripcion="+$("#descripcion").val()+"&estado="+$("#estado").val()+"&sonido="+$("#sonido:checked").val()+"&pantalla="+$("#pantalla:checked").val()+"&correo="+$("#correo:checked").val();
				$.post('registropuerto1.php',datos, function(result2) {if(result2!="Registro Exitoso"){alert(result2);}else{alert(result2),$(location).attr('href',"registropuerto.php");}},'json');				
			}},'json');
        }
		
		$('#puerto1').live('click',function(){
			if ($("#ip").val()==""){
				alert("Seleccione un Servidor Antes de Verificar");
				}else if ($("#puerto").val()==""){
					alert("Seleccione un Puerto Antes de Verificar");
					}else{
			var tipe = "ip="+$("#ip").val()+"&puerto=" +$("#puerto").val();
			$.post('buscador1.php',tipe, function(result){alert("Puerto "+result);},'json');
			}
			});
			
					$('#tipo1').live('click',function(){
			 $('#add').toggle('show');
			 
			});
			$('#envi').live('click',function(){
				 $.post('tiposervicio.php','tipo='+$("#text").val(),function(result){
					 alert(result);	 });
					  $("select#tipo").load("serviciocarga.php option");
					   $('#add').toggle('show');
				 });