audio_stop_all();
fn_menu_sequence(seq_menu_in);
if !instance_exists(oController) instance_create_layer(0, 0, "Instances", oController)