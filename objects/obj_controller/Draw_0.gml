//Sistema de horas como relógio
var _horas = string(floor(timer / 60));
var _minutos = string(floor(timer % 60));

if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

draw_text(30, 30, "Tempo: " + _horas + ":" + _minutos);
draw_text(30, 70, "Pontos: " + string(pontos));
draw_text(330, 30, "Fase: " + string(fase));