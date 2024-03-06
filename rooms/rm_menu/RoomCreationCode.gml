audio_stop_all();
fn_menu_sequence(seq_menu_in);
if !instance_exists(obj_controller) instance_create_layer(0, 0, "Instances", obj_controller)