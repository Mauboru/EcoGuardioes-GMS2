var _sprite_width = string_width(texto) + 8;
var _sprite_height = string_height(texto) + 4;
var _buttom_hover = obj_menu_manager.buttom_hover;

image_xscale = _sprite_width / 20; 
image_yscale = _sprite_height / 16;

if obj_menu_manager.in_selection == true {
	if _buttom_hover == id {
		image_blend = merge_color(image_blend, hover_color, 0.1);
	} else {
		image_blend = merge_color(image_blend, base_color, 0.1);
	}
}else{
	image_blend = merge_color(image_blend, base_color, 0.1);
}