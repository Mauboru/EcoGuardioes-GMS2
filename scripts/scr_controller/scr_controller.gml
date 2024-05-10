globalvar timer, timerMax, timer_vel, fase, pontos, aparecer, intervalWave, stopAlarm, countSequence, 
sucess, fails, stopSoundAlarm, specialEvent;

timerMax = 15;
timer = timerMax;
timer_vel = .02;
fase = 2;
pontos = 0;
aparecer = false;
intervalWave = false;
stopAlarm = false;
countSequence = 0;
sucess = 0;
fails = 0;
stopSoundAlarm = false;
specialEvent = false;

function verifySequence(value){
	if value == "acertou" {
		sucess++
		fails = 0
	}
	else {
		fails++
		sucess = 0
	}
	
	if sucess > 3 or fails > 3 stopSoundAlarm = true;
	else stopSoundAlarm = false;
}

function interval(){	
	fase += 1;
	timer = timerMax;
	intervalWave = true;
	
	if fase == 3 specialEvent = true;
	
	if fase == 4 room_goto(rm_fim_de_jogo);
	
	var textWave = instance_find(oHudText, 0);
	textWave.text = "Onda " + string(fase);
	
	//chama a imagem de alerta como sequence
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