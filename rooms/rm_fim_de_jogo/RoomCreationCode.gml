audio_stop_all();
if !instance_exists(obj_controller) instance_create_layer(0, 0, "Instances", obj_controller)
fn_menu_sequence(seq_bonus_in)

var _challenge_id = "6b1a18ae-9545-4412-91c4-38c17ab54288";

if gxc_get_query_param("challenge") == _challenge_id gxc_submit_challenge_score(pontos)