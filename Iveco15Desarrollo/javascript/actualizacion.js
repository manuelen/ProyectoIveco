	var intercalo = setInterval(function(){
		var uri = window.location.pathname;
		if(uri=='/dropbox/ProyectoIveco/iveco15Desarrollo/administrador.php'){
			var boton=1;
			}
		$("#principal").load("monitoreo.php?expandir="+boton)}, 5000);
		 $.ajaxSetup({ cache: false, async: false });
		 
		 $.ajaxSuccess(function() {
		alert("funciono");
}		);
		$('#botones').mouseenter(function(){ 
		clearInterval(intercalo);
		});
	
		