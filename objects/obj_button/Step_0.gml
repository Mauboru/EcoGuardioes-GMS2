var _posicao = instance_position(mouse_x, mouse_y, obj_button);

if (_posicao){
	destacado = true;
	
	if (mouse_check_button(mb_left)) {
		instance_destroy();
	}
}else{
	destacado = false;
}