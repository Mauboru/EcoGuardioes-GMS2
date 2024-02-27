globalvar in_pause, music_vol, sfx_vol, k_accept, k_confirm, k_cancel, k_left, k_right, k_up, k_down, ui_w, ui_h;

in_pause = false;
music_vol = 1;
sfx_vol = 1; 
k_accept = mb_left;
k_confirm = mb_right;
k_cancel = vk_escape;
k_left = vk_left;
k_right = vk_right;
k_up = vk_up;
k_down = vk_down;
ui_w = 512;
ui_h = 800;

function fn_jogar(){
	in_pause = false;
}

function fn_menu_sequence(_seq){
	var _tar_layer = "UI"
	var _exit_bt = instance_find(obj_exit,0);
	//var _reso_bt = instance_find(obj_resolution,0);
	var _resume_bt = instance_find(obj_play,0);
	var _volume_bt = instance_find(obj_volume,0);
	var _sequencia = layer_sequence_create(_tar_layer, ui_w * 0.5,ui_h * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, obj_exit, _exit_bt); 
	sequence_instance_override_object(_seq_instancia, obj_play, _resume_bt); 
	sequence_instance_override_object(_seq_instancia, obj_volume, _volume_bt); 
	//sequence_instance_override_object(_seq_instancia, obj_resolution, _reso_bt); 
}
	
/*
function fn_resume_buttom(){
	if mouse_check_button_pressed(k_accept){
		fn_menu_sequence(seq_menu_in);
		audio_play_sound(snd_fx_select,1,false);
		in_pause = false;
		obj_menu_manager.in_selection = false; 
	}
}
*/

function fn_pause(){
}

function fn_volume_buttom(){
    var _cursor = (mouse_x - x) / ui_w;
    var _volume_control = (mouse_y - y) / ui_h;
    
    if (obj_menu_manager.in_selection){
        // Se clicar fora do botão, voltar para a opção padrão
        if (_cursor < 0 || _cursor > 1 || _volume_control < 0 || _volume_control > 1){
            option = 0;
            texto = "Volume";
        } else {
            // Manusear a opção
            option += _cursor;
            option = clamp(option, 0, 1);
            
            // Se clicar em uma posição específica no botão, mudar para a opção correspondente
            if (_volume_control < 0.5){
                option = 0;
            } else {
                option = 1;
            }
            
            // Reproduzir som nos movimentos de seleção
            if (_cursor != 0 || _volume_control != 0){
                audio_play_sound(snd_fx_menu_move, 1, false);
            }
            
            // Opção 0
            if option == 0{
                // Ajustar o volume da música
                music_vol += _volume_control * 0.05;
                music_vol = clamp(music_vol, 0, 1);
                
                // Atualizar o texto
                texto = "< Music Volume >\n" + string(round(music_vol * 100)) + "%";
            } else if option == 1{ // Opção 1
                
                // Ajustar o volume dos efeitos sonoros
                sfx_vol += _volume_control * 0.05;
                sfx_vol = clamp(sfx_vol, 0, 1);
                
                // Atualizar o texto
                texto = "< SFX Volume >\n" + string(round(sfx_vol * 100)) + "%";
            }
        }
        
        // Volume em escala quase perfeita
        // Fórmulas podem ser usadas aqui para uma conversão de onda mais precisa
        var _realMusic = power(music_vol, 2);
        var _realFX = power(sfx_vol, 2);
        
        // Atualizar o ganho de cada grupo de som
        audio_group_set_gain(music_group, _realMusic, 30);
        audio_group_set_gain(sfx_group, _realFX, 30);
        
    } else {
        texto = "Volume";
    }
}

function fn_exit_buttom(){
	if obj_menu_manager.in_selection{
		texto = "Você quer mesmo sair do jogo??";	
		if mouse_check_button_pressed(k_accept) {
			audio_play_sound(snd_fx_select, 1, false);
			game_end();
		}
	}else {
		texto = "Sair";
	}
}