if !audio_is_playing(snd_menu) audio_play_sound(snd_menu, 1, true);
if !instance_exists(obj_menu_manager) instance_create_layer(0, 0, "UI", obj_menu_manager);
if !instance_exists(obj_controller) instance_create_layer(0, 0, "UI", obj_controller);