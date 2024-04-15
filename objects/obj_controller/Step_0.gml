randomize();

if in_pause exit;

var _room_name = room_get_name(room);

audio_sound_gain(snd_manguezal, music_volume, 0);
audio_sound_gain(snd_menu, music_volume, 0);
audio_sound_gain(snd_tema, music_volume, 0);

switch (_room_name) {	
    case "rm_init":
        if (!audio_is_playing(snd_manguezal)) audio_play_sound(snd_manguezal, 1, 0);
        break;
	case "rm_cutscene":
		//if (!audio_is_playing(snd_cutscene)) audio_play_sound(snd_menu, 1, 1);
		if aparecer {
			fn_cutscene_sequence(seq_cutscene);
			aparecer = false;
			pode_criar = false;
		}
		break;
	case "rm_menu":
	    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
		break;
	case "rm_jogo":
		//if (!audio_is_playing(snd_tema)) audio_play_sound(snd_tema, 1, 1);
		
		#region Tempo
			//Controla o tempo da mare
			if(timer > 0) timer -= timer_vel
			if(timer <= 0){
				timer = 0
				room_goto(rm_fim_de_jogo);
			}
		#endregion

		#region Pessoas

		var _quantidade_desejada = 0;
		var _quantidade_existente = instance_number(obj_persons);
		var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
		_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
		// Cria as instâncias necessárias
		if (_instancias_a_adicionar > 0 and not timer <= 5) {
			repeat(_instancias_a_adicionar) {
				alarm[0] = irandom_range(0, 130);
			}
		}

		//Deletando inimigos caso ainda existam msm após parare de ser criados
		if (timer <= 5 and _quantidade_existente != 0) instance_destroy(obj_persons);

		#endregion
		
		break;
	case "rm_fim_de_jogo":
	    var _layer_id = layer_get_id("bk_water");
	    var _new_y = layer_get_y(_layer_id);
		
		if  _new_y <= 500  _new_y = 500;
		else {
			 _new_y -= random_range(.8, 1.5)
			layer_y(_layer_id,  _new_y);
		}

	    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
	    break;
    default:
        audio_stop_all();
        break;
}