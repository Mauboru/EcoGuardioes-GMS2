if in_pause exit;

#region Tempo

//Controla o tempo da mare
if(global.timer > 0) global.timer -= global.timer_vel
if(global.timer <= 0){
	global.timer = 0
	global.encheu = true;
	transition(rm_bonus);
}

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

#region Debugg

//Reinicia o jogo
if (keyboard_check_pressed(vk_f1)){
	game_restart();
}

//Vai para room escolhida
if keyboard_check_pressed(vk_numpad1){
	room_goto(rm_menu)	
}
if keyboard_check_pressed(vk_numpad2){
	room_goto(rm_jogo)	
}
if keyboard_check_pressed(vk_numpad3){
	room_goto(rm_bonus)	
}

#endregion