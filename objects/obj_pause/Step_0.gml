event_inherited();

var _click = mouse_check_button_pressed(k_accept)
var _colision = instance_position(mouse_x, mouse_y, obj_pause);

if _click and _colision  in_pause = !in_pause

if in_pause {
	texto = ">";
	x = room_width/2;
	y = room_height/2;
	layer_enable_fx("Effect", true)
} else {
	texto = "||";
	x = 28;
	y = 23;
	layer_enable_fx("Effect", false)
}