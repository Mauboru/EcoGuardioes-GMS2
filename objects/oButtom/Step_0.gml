var _sprite_width = string_width(texto) + 8;
var _sprite_height = string_height(texto) + 4;
var _inst_buttom_hover = instance_position(mouse_x, mouse_y, oButtom);
var _is_selected = _inst_buttom_hover == id;

image_xscale = _sprite_width / 20; 
image_yscale = _sprite_height / 16;

if  _is_selected{
	image_blend = merge_color(image_blend, hover_color, 0.1);
	if mouse_check_button_pressed(k_accept){
		audio_play_sound(snd_fx_select, 1, false);
		if on_click != noone{
			on_click();
		}
	}
}else{
	image_blend = merge_color(image_blend, base_color, 0.1);
}