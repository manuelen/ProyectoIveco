	$(function(){
    $("#ip1").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip2").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip3").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip4").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ping").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#puerto").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#cedula").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
		$("#ip1").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
		$("#ip2").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
		$("#ip3").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
			$("#ip4").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
				$("#ping").keyup(function(event){
        if( ($(this).val()<=0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
					$("#cedula").keyup(function(event){
        if( ($(this).val()>99999999)||($(this).val()<=1000)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
});
function isNumeric(event){
    return (
        (event.keyCode > 7 && event.keyCode < 10)
        || (event.keyCode > 47 && event.keyCode < 60)
        || (event.keyCode > 95 && event.keyCode < 106)
        || event.keyCode == 17
        || event.keyCode == 116
    )
}
