globalvar in_pause, k_accept, k_confirm, k_cancel, k_left, k_right, k_up, k_down, _audio, music_volume;

in_pause = false;
k_accept = mb_left;
k_confirm = mb_right;
k_cancel = vk_escape;
k_left = vk_left;
k_right = vk_right;
k_up = vk_up;
k_down = vk_down;
music_volume = 1;

function fn_cutscene_sequence(_seq){
	var _tar_layer = "UI"
	var _lixeira = instance_find(oTrash,0);
	var  _lixo = instance_find(oResidues,0);
	var _sequencia = layer_sequence_create(_tar_layer, room_width * 0.5, room_height * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, oTrash, _lixeira); 
	sequence_instance_override_object(_seq_instancia, oResidues,  _lixo); 
}

function fn_wave_seq(_seq){
	var _tar_layer = "UI"
	var _lixeira = instance_find(oHudText,0);
	var _sequencia = layer_sequence_create(_tar_layer, room_width * 0.5, room_height * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, oTrash, _lixeira); 
}

function fnVolume(){
    music_volume = !music_volume;
}

function fnExit() {
    game_end();
}