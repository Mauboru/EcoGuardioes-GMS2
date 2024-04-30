clicado = false;

var _inst_lixeira = instance_position(x, y, oTrash);

if (_inst_lixeira != noone && _inst_lixeira.destacado && tipo == _inst_lixeira.tipo) {
	pontos += 10;
	var choice = choose(1, 2, 3, 4, 5);
	if choice == 3 audio_play_sound(sndSucess, 0, 0);
    instance_destroy();
} else {
    if (x < 0 || x > room_width || y > oLimit.y) {
		phy_position_x = x_anterior;
        phy_position_y = y_anterior;
    }
}

if(_inst_lixeira != noone && _inst_lixeira.destacado && tipo != _inst_lixeira.tipo){
	instance_create_layer(x, y, "Instances", oScreenshake);
	var choice = choose(1, 2, 3, 4, 5);
	if choice == 3 audio_play_sound(sndError, 0, 0);
	pontos -= 2;
}