var _inst_buttom_hover = instance_position(mouse_x, mouse_y, obj_buttom);

if in_pause {
	if _inst_buttom_hover {
		in_selection = true;
		buttom_hover = _inst_buttom_hover;
		if mouse_check_button_pressed(k_accept){
			audio_play_sound(snd_fx_select, 1, false);
			if _inst_buttom_hover.on_click != noone{
				_inst_buttom_hover.on_click();
			}
			if (!instance_exists(obj_transition)){
				if _inst_buttom_hover.destino != noone {
					var _tran = instance_create_layer(0, 0, "Transitions", obj_transition);
					_tran.destino = _inst_buttom_hover.destino;
				}
			}
		}
	}else{
		in_selection = false;
	}
}