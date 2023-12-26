//Fazendo controle dos pontos, fases e ondas
switch(tipo){
	case"pontos":{
		//Lógica de pontuação
		draw_text(x, y, pontos)
		break;
	}
	case"fase":{
		//Lógica de fase
		
		break;
	}
	case"ondas":{
		//Lógica de ondas
		draw_text(x, y, ondas);
		break;
	}
}

//Sistema de horas como relógio
var _horas = string(floor(timer / 60));
var _minutos = string(floor(timer % 60));

if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

draw_text(20, 40, "Tempo: " + _horas + ":" + _minutos);