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

function drawing(_font, _size,  _color, _valign, _halign, _x, _y, _text){
	var _xscale = 1/(string_width(_text)/_size)
	var _yscale = _size * 1 / 100
	draw_set_font(_font);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	draw_set_color(_color)
	draw_text_transformed(_x, _y, _text, _xscale, _yscale,0 );
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_color(-1)
}