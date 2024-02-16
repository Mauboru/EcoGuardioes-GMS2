var _bonus = point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2,
y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);

//Estou em cima do bonus(id) e pressionei o esquerdo
if (_bonus and mouse_check_button_pressed(mb_left)){
	var _posicao = instance_position(mouse_x, mouse_y, obj_bonus_grid);
	var _tam = ds_grid_get(obj_controller.bonus_escolhidos, 1, _posicao.bonus);
	
	//Tornando o uso do bonus apenas possivel se ja n estiver ativado
	if (_posicao.is_bonus == false){
		_posicao.is_bonus = true;
	}
	
	//Verifica se o grid ja n esta zerado
	if (_tam > 0 and _posicao.is_bonus == true){
		ds_grid_add(obj_controller.bonus_escolhidos, 1, _posicao.bonus, -1);
		var _titulo = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_bonus);
		var _treme = instance_create_layer(x, y, "Instances", obj_screenshake);
		_titulo.image_index = _posicao.bonus;
		_treme.shake = 1.5;
	}
	
	//Código dos bônus
	switch(_posicao.bonus){
		case 0:{	//Tempo
			global.timer_vel = .01;
			obj_pessoas.speed = .1;
			alarm[0] = 3 * 60;
			break;
		}
	}
}