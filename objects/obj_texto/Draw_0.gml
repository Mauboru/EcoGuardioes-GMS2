//Sistema de horas como relógio
if (tipo == "tempo"){
	var _horas = string(floor(global.timer / 60));
	var _minutos = string(floor(global.timer % 60));

	if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

	draw_text(x, y, "Tempo: " + _horas + ":" + _minutos);
}

//draw_text(30, 70, "Pontos: " + string(global.pontos));