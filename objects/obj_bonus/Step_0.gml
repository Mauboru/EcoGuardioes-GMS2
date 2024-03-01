/*var _bonus = point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);

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

if(global.encheu){
	if (_bonus) {
	    destacado = true;

	    // Verificar se o botão está sendo pressionado
	    if (mouse_check_button(mb_left)) {
	        if (!pressionando_bonus) {
				depth = -5000;
	            pressionando_bonus = true;
	            tempo_pressao = 0;
	        }

	        // Aumentar o tamanho e fazer tremer enquanto o botão está sendo pressionado
	        tempo_pressao += 1.5;
	        var _fator_crescimento = tempo_pressao / tempo_maximo_pressao;
	        image_xscale = 1 + _fator_crescimento * 0.3;
	        image_yscale = 1 + _fator_crescimento * 0.3;
		
			if(_fator_crescimento > 1){
				//Verifica se player tem pontos suficientes para comprar
				if (global.pontos >= 50){
					global.pontos -= 50;
					var _posicao = instance_position(mouse_x, mouse_y, obj_bonus);

		            if (_posicao != noone && _posicao == id) {
		                var _tipo = _posicao.tipo;
			            ds_grid_add(obj_controller.bonus_escolhidos, 1, _posicao.tipo, 1)
		                instance_destroy(_posicao);
					}
				}else{
					//reseta as variáveis
			        pressionando_bonus = false;
			        tempo_pressao = 0;
			        image_xscale = 1;
			        image_yscale = 1;
				}
			}
	    } else {
	        //resetar as variáveis
	        pressionando_bonus = false;
	        tempo_pressao = 0;
	        image_xscale = 1;
	        image_yscale = 1;
	    }
	} else {
	    destacado = false;
	}
}else{
	instance_destroy();
}*/