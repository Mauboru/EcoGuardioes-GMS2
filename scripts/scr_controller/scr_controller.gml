globalvar timer, timer_vel, fase, pontos, aparecer;

timer = 35;
timer_vel = .02;
fase = 1;
pontos = 0;
aparecer = false;

function reiniciar(){	
	fase += .2;
	timer = 35 * fase;
	pontos = 0;
	
	instance_destroy(obj_lixo);
}

function drawing(_font,  _color, _valign, _halign, _x, _y, _text){
	draw_set_font(_font);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	draw_set_color(_color)
	draw_text(_x, _y, _text);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_color(-1)
}

function transition(_room){
	if (!instance_exists(obj_transition)){
		var _tran = instance_create_layer(0, 0, "Transitions", obj_transition);
		_tran.destino = _room;
	}
}