var _tempo = obj_controller.timer

if (enchendo) {
    image_yscale -= enchimento_velocidade / _tempo;
	
	if(image_yscale <= -1.5) enchendo = false;
}

show_debug_message(image_yscale)