globalvar timer, timerMax, timer_vel, fase, pontos, aparecer, intervalWave;

timerMax = 10;
timer = timerMax;
timer_vel = .02;
fase = 1;
pontos = 0;
aparecer = false;
intervalWave = false;

function interval(){	
	fase += 1;
	timer = timerMax;
	intervalWave = true;
	
	if fase == 4 room_goto(rm_fim_de_jogo);
	
	var textWave = instance_create_layer(room_width/2, room_height/2, "UI", oHudText);
	textWave.text = "Onda " + string(fase);
	textWave.charging = true;
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
	if (!instance_exists(oTransition)){
		var _tran = instance_create_layer(0, 0, "Transitions", oTransition);
		_tran.destino = _room;
	}
}
	
function print(text){
	show_debug_message(string(text));
}