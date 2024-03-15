if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		instance_destroy();
		transition(rm_jogo)
		return;
	}
	current_dialog = dialog.pop();
	showing_dialog = true;
	audio_play_sound(current_dialog.audio, 1, 0);
} else {
	//Remover isso depois
	if(mouse_check_button_pressed(k_accept) or !audio_is_playing(current_dialog.audio)){
		showing_dialog = false;
		audio_stop_sound(current_dialog.audio)
	}
}

index += .18;