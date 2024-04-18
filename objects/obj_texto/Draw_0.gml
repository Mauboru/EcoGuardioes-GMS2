//draw_self();

switch(tipo){
	case "tempo":{
		var _horas = string(floor(timer / 60));
		var _minutos = string(floor(timer % 60));

		if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

		draw_set_halign(fa_center);
		draw_text(x, y, "Tempo: " + _horas + ":" + _minutos);
		break;
	}
	
	case "pontos":{
		drawing(fnt_ui, c_white, fa_middle, fa_center, x + 40, y + 5, pontos);
		break;
	}
}