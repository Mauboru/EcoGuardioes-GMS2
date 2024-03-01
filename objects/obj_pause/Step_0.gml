event_inherited();

var _click = mouse_check_button_pressed(k_accept)
var _colision = instance_position(mouse_x, mouse_y, obj_pause);

if _click and _colision  in_pause = !in_pause

if in_pause {
	texto = " D ";
	x = room_width/2;
	y = room_height/2;
	audio_pause_sound(snd_tema);
	layer_enable_fx("Effect", true);
} else {
	texto = " C ";
	x = 44;
	y = 40;
	layer_enable_fx("Effect", false);
	audio_resume_sound(snd_tema);
}