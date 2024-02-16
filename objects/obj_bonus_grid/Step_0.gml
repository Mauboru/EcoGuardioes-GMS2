var _bonus = point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2,
y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);
var _posicao = instance_position(mouse_x, mouse_y, obj_bonus_grid);

if (_posicao != noone) {
    var _tam = ds_grid_get(obj_controller.bonus_escolhidos, 1, _posicao.bonus);

    //Estou em cima do bonus(id) e pressionei o esquerdo
	if (_bonus and mouse_check_button_pressed(mb_left) and global.is_bonus == false and _tam > 0){
		global.is_bonus = true;
		ds_grid_add(obj_controller.bonus_escolhidos, 1, _posicao.bonus, -1);
		var _titulo = instance_create_layer(room_width/2, room_height/2, "Instances", obj_mostra_bonus);
		var _treme = instance_create_layer(x, y, "Instances", obj_screenshake);
		_titulo.image_index = _posicao.bonus;
		_treme.shake = 1.5;
		
		//Código dos bônus
		switch(_posicao.bonus){
			case 0:{	//Tempo
				alarm[0] = 3 * 60;
				global.timer_vel = .01;
				obj_pessoas.speed = .1;
				break;
			}
		
			case 1:{	//Lixeiro
				global.timer_vel = .01;
				alarm[0] = 3 * 60;
				break;
			}
		
			case 2:{	//Plástico
				global.timer_vel = .01;
				alarm[0] = 3 * 60;
				break;
			}
		
			case 3:{	//Metal
				global.timer_vel = .01;
				alarm[0] = 3 * 60;
				break;
			}
		
			case 4:{	//Papel
				global.timer_vel = .01;
				alarm[0] = 3 * 60;
				break;
			}
		
			case 5:{	//Vidro
				global.timer_vel = .01;
				alarm[0] = 3 * 60;
				break;
			}
		}
	}	
}