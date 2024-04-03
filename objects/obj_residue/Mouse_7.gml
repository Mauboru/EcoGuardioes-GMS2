clicado = false;

var _inst_lixeira = instance_position(x, y, obj_lixeira);

if (_inst_lixeira != noone && _inst_lixeira.destacado && tipo == _inst_lixeira.tipo) {
    var _pontos = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_pontos);
	_pontos.color = c_green;
    _pontos.score_value = "+10";
    _pontos.duration = 60 * 2;
	pontos += 10;
    instance_destroy();
} else {
    if (x < 0 || x > room_width || y > obj_limite.y) {
		phy_position_x = x_anterior;
        phy_position_y = y_anterior;
    }
}

if(_inst_lixeira != noone && _inst_lixeira.destacado && tipo != _inst_lixeira.tipo){
	instance_create_layer(x, y, "Instances", obj_screenshake);
	var _pontos = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_pontos);
    _pontos.score_value = "-2";
    _pontos.duration = 60 * 2;
	pontos -= 2;
	_pontos.color = c_red;
}