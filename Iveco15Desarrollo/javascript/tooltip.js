$(document).ready(function() {
	new show5('Verdana','2','CDBF1E',' ',' ','','110','0','1','0','0','+1');
        jQuery("section").live('mouseenter',function (e) {             
            var posMouse = e.pageX - this.offsetLeft; 
            var textoTooltip = jQuery(this).attr("mensaje"); 
			
            if (textoTooltip.length > 0) {
                jQuery(this).append('<div class="tooltip">' + textoTooltip + '</div>');
                jQuery("section > div.tooltip").css("left", "" + posMouse - 103 + "px").delay(1000);
                jQuery("section > div.tooltip").toggle(300);
            }
        });

        jQuery("section").live('mouseleave',function () {             
            jQuery("section > div.tooltip").toggle(300).delay(300).queue(function () {
                jQuery(this).remove();
                jQuery(this).dequeue();
            });
        });});