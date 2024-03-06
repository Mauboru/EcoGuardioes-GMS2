globalvar in_pause, music_vol, sfx_vol, k_accept, k_confirm, k_cancel, k_left, k_right, k_up, k_down, _audio;

in_pause = false;
music_vol = 1;
sfx_vol = 1; 
k_accept = mb_left;
k_confirm = mb_right;
k_cancel = vk_escape;
k_left = vk_left;
k_right = vk_right;
k_up = vk_up;
k_down = vk_down;

function fn_menu_sequence(_seq){
	var _tar_layer = "UI"
	var _play_bt = instance_find(obj_play,0);
	var _volume_bt = instance_find(obj_volume,0);
	var _exit_bt = instance_find(obj_exit,0);
	var _sequencia = layer_sequence_create(_tar_layer, room_width * 0.5, room_height * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, obj_exit, _exit_bt); 
	sequence_instance_override_object(_seq_instancia, obj_play, _play_bt); 
	sequence_instance_override_object(_seq_instancia, obj_volume, _volume_bt); 
}

function fn_jogar_buttom(){
	in_pause = false;
	transition(rm_cutscene)
}

function fn_resume_buttom(){
	reiniciar();
	transition(rm_jogo)
}

function fn_volume_buttom(){
    
}

function fn_pause_buttom(){
}

function fn_exit_buttom() {
    var _audio = audio_play_sound(snd_fx_select, 1, false);
	
	while (audio_is_playing(_audio))
    game_end();
}