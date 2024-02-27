if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		instance_destroy();
		return;
	}
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	if(mouse_check_button_pressed(k_accept)) {
		showing_dialog = false;
		alpha = 0;
	}
}