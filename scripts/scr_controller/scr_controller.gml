function reiniciar(){
	var _lixos = obj_tela.lixos;
	
	global.timer = 120;
	global.fase++;
	global.pontos -= _lixos * 2;
	global.erros = 0;
	global.encheu = false;
	
	//Destruindo pq n sei como fazer de outro jeito
	instance_destroy(obj_lixo);
}

function drawing(_font, _color, _valign, _halign, _x, _y, _text){
	draw_set_font(_font);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	draw_text(_x, _y, _text);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}