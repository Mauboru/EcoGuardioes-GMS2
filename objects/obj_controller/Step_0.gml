//Controla o tempo da mare
if(global.timer > 0) global.timer -= .02
if(global.timer <= 0){
	global.timer = 0
	global.encheu = true;
}

#region Bônus

// Verifica se possui bônus, se sim adiciona na tela
/*if (array_length(bonus) > 0) {
    for (var _i = 0; _i < array_length(bonus); _i++) {
        var _bonus_existente = instance_create_layer(12 + (64*_i) + (6*_i), 132, "Instances", obj_bonus);
		_bonus_existente.tipo = _i;
    }
}*/

#endregion

#region Pessoas

var _quantidade_desejada = 6;
var _quantidade_existente = instance_number(obj_pessoas);
var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
// Cria as instâncias necessárias
if (_instancias_a_adicionar > 0 and not global.timer <= 5) {
    repeat(_instancias_a_adicionar) {
        alarm[0] = irandom_range(0, 230);
    }
}

//Deletando inimigos caso ainda existam msm após parare de ser criados
if (global.timer <= 5 and _quantidade_existente != 0) instance_destroy(obj_pessoas);

#endregion

#region Tela

//Criando o objeto de tela de fim de jogo
if (global.encheu){
	if(!instance_exists(obj_tela)){
		var _tela =instance_create_layer(x, y, "HUD", obj_tela);
		_tela.x = room_width/2;
		_tela.y = room_height/2;
		_tela.erros = global.erros;
		_tela.pontuacao = global.pontos;
		_tela.lixos = instance_number(obj_lixo);
		
		if(instance_number(obj_lixo) != 0) _tela.image_index = 0;
		else _tela.image_index = 1;
	}
}else{
	instance_destroy(obj_tela);
}

#endregion

#region Audio

//Iniciando musica caso já n esteja tocando
//if (!audio_is_playing(snd_tema)) audio_play_sound(snd_tema, 1, 1);

#endregion

#region Discord

/*
if (global.discord == true){
	discord_update_presence("Iniciou o Discord", "Jogando há " + string(ceil(current_time / 60000)) + " minutos", "icon1", "");
}
*/

#endregion

#region Debugg

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