event_inherited();

var _click = mouse_check_button_pressed(k_accept)
var _colision = instance_position(mouse_x, mouse_y, oPause);

if _click and _colision  in_pause = !in_pause

if in_pause {
	var volum = instance_create_layer(room_width/2, room_height/2 + 96, "UI", oVolume);
	var returne = instance_create_layer(room_width/2, room_height/2 + 192, "UI", oReturn);
	var exite = instance_create_layer(room_width/2, room_height/2 + 288, "UI", oExit);
	texto = "  D  ";
	x = room_width/2;
	y = room_height/2;
	audio_pause_sound(snd_tema);
	layer_enable_fx("Effect", true);
} else {
	instance_destroy(oReturn);
	instance_destroy(oExit);
	instance_destroy(oVolume);
	texto = " C ";
	x = 44;
	y = 40;
	layer_enable_fx("Effect", false);
	audio_resume_sound(snd_tema);
}