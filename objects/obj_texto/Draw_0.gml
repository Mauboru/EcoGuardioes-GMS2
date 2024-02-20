switch(tipo){
	case "tempo":{
		var _horas = string(floor(global.timer / 60));
		var _minutos = string(floor(global.timer % 60));

		if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

		draw_set_halign(fa_center);
		draw_text(x, y, "Tempo: " + _horas + ":" + _minutos);
		break;
	}
	
	case "bonus":{
		draw_text(x, y, "x00");
		break;
	}
	
	case "pontos":{
		draw_text(x, y, global.pontos_str);
		break;
	}
	
	case "moedas":{
		draw_text(x, y, "0000");
		break;
	}
}