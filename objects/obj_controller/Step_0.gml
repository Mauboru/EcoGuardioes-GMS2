var _quantidade_desejada = 6;
var _quantidade_existente = instance_number(obj_pessoas);
var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
// Cria as instâncias necessárias
if (_instancias_a_adicionar > 0) {
    repeat(_instancias_a_adicionar) {
        alarm[0] = irandom_range(0, 300);
    }
}

//Controla o tempo da mare
if(timer > 0) timer -= .02
if(timer <= 0){
	timer = 0
	encheu = true;
}

//Criando o objeto de tela de fim de jogo
if (encheu){
	if(!instance_exists(obj_tela)){
		var _tela =instance_create_layer(x, y, "HUD", obj_tela);
		//_tela.tipo = "fimdejogo";
		_tela.x = room_width/2;
		_tela.y = room_height/2;
		_tela.erros = instance_number(obj_lixo);
	}
}

#region Discord

/*
if (global.discord == true){
	discord_update_presence("Iniciou o Discord", "Jogando há " + string(ceil(current_time / 60000)) + " minutos", "icon1", "");
}
*/

#endregion

#region Controles para Debuggar

//Tela cheia
if (keyboard_check(ord("F"))) {
    if(window_get_fullscreen()){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}

//Reinicia o jogo
if (keyboard_check_pressed(vk_f1)){
	game_restart();
}

#endregion