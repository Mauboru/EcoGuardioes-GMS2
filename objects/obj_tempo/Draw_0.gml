draw_self();

var _horas = string(floor(timer / 60));
var _minutos = string(floor(timer % 60));

if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

drawing(fnt_ui, c_white, fa_middle, fa_center, x + 50, y + 5, _horas + ":" + _minutos);