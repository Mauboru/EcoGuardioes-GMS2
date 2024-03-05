if in_pause exit;

var _room_name = room_get_name(room);

if room_get_name(room) == "rm_jogo" {
	
	#region Tempo

	//Controla o tempo da mare
	if(timer > 0) timer -= timer_vel
	if(timer <= 0){
		timer = 0
		_fase_terminou = true;
		transition(rm_bonus);
	}

	#endregion

	#region Pessoas

	var _quantidade_desejada = 6;
	var _quantidade_existente = instance_number(obj_pessoas);
	var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
	_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
	// Cria as instâncias necessárias
	if (_instancias_a_adicionar > 0 and not timer <= 5) {
		repeat(_instancias_a_adicionar) {
		    alarm[0] = irandom_range(0, 230);
		}
	}

	//Deletando inimigos caso ainda existam msm após parare de ser criados
	if (timer <= 5 and _quantidade_existente != 0) instance_destroy(obj_pessoas);

	#endregion
}

#region Musics

switch (_room_name) {
    case "rm_init":
        if (!audio_is_playing(snd_manguezal)) audio_play_sound(snd_manguezal, 1, 1);
        break;
	case "rm_cutscene":
		break;
	case "rm_menu":
	    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
		break;
	case "rm_jogo":
		break;
    default:
        audio_stop_all();
        break;
}

show_debug_message(_room_name);

#endregion