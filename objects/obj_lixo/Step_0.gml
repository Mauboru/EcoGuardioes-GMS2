var _mare_encheu = obj_controller.encheu

if (!_mare_encheu){
	if (clicado) {
	    x = mouse_x;
	    y = mouse_y;
	
		vspeed = 0;
		hspeed = 0;
	}
	else {
		vspeed += gravidade;
		x += hspeed;
		y += vspeed;
	
		x_anterior = x;
	    y_anterior = y;

		// Verificar colisão com o chão antes de aplicar a posição
		if (place_meeting(x, y, obj_limite)) {
		    y = obj_limite.y - obj_limite.sprite_height / 2;
		    vspeed = 0;
		}

		// Verificar colisão com as paredes e ajustar a velocidade horizontal
		if (place_meeting(x, y, obj_limite)) {
		    hspeed *= -1;
		}
	}
}