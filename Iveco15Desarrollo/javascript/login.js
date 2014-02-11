// Login Form
$(document).ready(function() {
    

$(function() {
//se traen todas los cuadros de que se desean expandir por medio de sus id o class
	var h2 = $('h2');
	var sec = $('.session');
	var fieldset= $('fieldset');
    var button = $('#loginButton');
    var box = $('#loginBox');
    var form = $('#loginForm');
	//se utiliza para que la pagina no cargue un # al momento de dar click en el boton
    button.removeAttr('href');

	//se utiliza una funcion que cuando se preciona el boton de id logginBox  se expanda con una animacion

	button.mouseup(function (login) {
		h2.toggle(150);
		sec.toggle(150);
		fieldset.toggle(150);
		form.toggle(150);
		box.toggle();
	}); 
	//se utiliza para que se pueda precionar dentro del cuadro que se expandio sin que se cierre
	form.mouseup(function() { 
        return false;
    });
	//si se preciona en cualquier otro lugar que no sea dentro del cuadro se cierra el cuadro.
	$(this).mouseup(function(login) {
        if(!($(login.target).parent('#loginButton').length > 0)) {
            button.removeClass('active'); //evita que cuando se le de click afuera del cuadro se abra denuevo
            box.hide();
        }
    });
	
});

});