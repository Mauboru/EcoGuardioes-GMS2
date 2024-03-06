globalvar timer, timer_vel, _fase_terminou, fase, pontos, erros;

timer = 1;
timer_vel = .02;
_fase_terminou = true; //Transformar em False
fase = 1;
pontos = 0;
erros = 0;

function reiniciar(){	
	fase++;
	timer += 60 * fase;
	//pontos -= _lixos * 2;
	erros = 0;
	encheu = false;
	
	//Destruindo pq n sei como fazer de outro jeito
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