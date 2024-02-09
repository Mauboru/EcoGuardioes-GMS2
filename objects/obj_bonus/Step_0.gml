// Evento de colisão com o objeto lixo
var _bonus = point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);
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
		
			if(_fator_crescimento > 2.5){
				//Verifica se player tem pontos suficientes para comprar
				if (global.pontos >= 50){
					global.pontos -= 50;
					var _posicao = instance_position(mouse_x, mouse_y, obj_bonus);

		            if (_posicao != noone && _posicao == id) {
		                // Adiciona o bônus ao array
		                var _tipo = _posicao.tipo;

		                // Adicionar o novo bônus ao final do array
			            array_push(global.bonus_escolhidos, _tipo);

			            // Atualizar a matriz de quantidade de bônus escolhidos
			            var _index = array_find_index(obj_controller.bonus, _tipo); // Encontrar o índice do bônus na lista bonus

			            if (_index != -1) {
			                // Incrementar a quantidade na matriz
			                global.tipos_existentes[_index, 1] += 1;
			            }
				
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
}