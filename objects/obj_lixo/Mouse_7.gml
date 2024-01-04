clicado = false;

// Encontre todas as instâncias de obj_lixeira
var _inst_lixeira = instance_position(x, y, obj_lixeira);

//Estou na lixeira correta então pontue e me destrua
if (_inst_lixeira != noone && _inst_lixeira.destacado && tipo == _inst_lixeira.tipo) {
	global.pontos += 10;
    var _pontos = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_pontos);
	_pontos.color = c_green;
    _pontos.score_value = "+10";
    _pontos.duration = 60 * 2;
    instance_destroy();
} else {
    if (x < 0 || x > room_width || y > obj_limite.y) {
        x = x_anterior;
        y = y_anterior;
    }
}

//Estou na lixeira incorreta
if(_inst_lixeira != noone && _inst_lixeira.destacado && tipo != _inst_lixeira.tipo){
	instance_create_layer(x, y, "Instances", obj_screenshake);
	global.pontos -= 2;
	global.erros++;
	var _pontos = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_pontos);
    _pontos.score_value = "-2";
    _pontos.duration = 60 * 2;	
	_pontos.color = c_red;
}