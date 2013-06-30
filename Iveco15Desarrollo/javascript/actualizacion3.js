	var intercalo = setInterval(function(){
		
		$("#principal").load("monitoreo1.php")}, 500);
		 $.ajaxSetup({ cache: false, async: false });
		 $.ajaxSuccess(function() {
		alert("funciono");
}		);

		$('#botones').mouseenter(function(){ 
		clearInterval(intercalo);
		
		});
	
		