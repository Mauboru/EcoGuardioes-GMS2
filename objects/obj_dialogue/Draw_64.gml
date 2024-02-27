if(showing_dialog == true) {
	var _text_x = room_width/2;
	var _text_y = room_height/2;
	
	draw_sprite(current_dialog.sprite, 0, _text_x, _text_y);
	draw_set_color(c_white);
	draw_text_ext(_text_x, _text_y, current_dialog.message, 16, display_get_gui_width() - 232);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);