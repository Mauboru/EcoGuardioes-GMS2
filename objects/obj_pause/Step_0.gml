event_inherited();

var _click = mouse_check_button_pressed(k_accept)
var _colision = instance_position(mouse_x, mouse_y, obj_pause);

if _click and _colision  in_pause = !in_pause

if in_pause {
	//icon_image = spr_play;
	x = room_width/2;
	y = room_height/2;
	layer_enable_fx("Effect", true)
} else {
	//icon_image = spr_pause;
	x = 44;
	y = 40;
	layer_enable_fx("Effect", false)
}