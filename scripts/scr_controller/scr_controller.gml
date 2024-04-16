globalvar timer, timer_vel, fase, pontos, aparecer, pode_criar;

timer = 35;
timer_vel = .02;
fase = 1;
pontos = 0;
aparecer = false;
pode_criar = true;

function reiniciar(){	
	fase += .2;
	timer = 35 * fase;
	
	instance_destroy(obj_residue);
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
	
function print(text){
	show_debug_message(string(text));
}