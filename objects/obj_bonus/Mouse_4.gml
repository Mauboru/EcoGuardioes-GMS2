if(global.encheu){
	// Pegando o bônus escolhido pelo jogador
	var _posicao = instance_position(mouse_x, mouse_y, obj_bonus);

	if (_posicao != noone && _posicao == id) {
	    // Adiciona o bônus ao array
	    var _tipo = _posicao.tipo;
	    var _novo_bonus = tipo_mapeamento[_tipo];

	    // Adicionar o novo bônus ao final do array
	    obj_controller.bonus[array_length_1d(obj_controller.bonus)] = _novo_bonus;
    
	    instance_destroy(obj_bonus);
	}

	//Começando uma nova partida
	reiniciar();
}else{
	instance_destroy();
}