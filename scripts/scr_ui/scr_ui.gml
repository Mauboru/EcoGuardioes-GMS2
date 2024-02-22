globalvar in_pause, music_vol, sfx_vol, k_accept, k_cancel, k_left, k_right, k_up, k_down;

in_pause = false;
music_vol = 1;
sfx_vol = 1; 
k_accept = mb_left;
k_cancel = vk_escape;
k_left = vk_left;
k_right = vk_right;
k_up = vk_up;
k_down = vk_down;

function menu_sequence(_seq){
	var _tar_layer = "UI"
	var _exit_bt = instance_find(obj_exit,0);
	var _reso_bt = instance_find(obj_resolution,0);
	var _resume_bt = instance_find(obj_resume,0);
	var _volume_bt = instance_find(obj_volume,0);
	var _sequencia = layer_sequence_create(_tar_layer, ui_w * 0.5,ui_h * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, obj_exit, _exit_bt); 
	sequence_instance_override_object(_seq_instancia, obj_resume, _resume_bt); 
	sequence_instance_override_object(_seq_instancia, obj_volume, _volume_bt); 
	sequence_instance_override_object(_seq_instancia, obj_resolution, _reso_bt); 
}
	
function resume_buttom(){
	if mouse_check_button_pressed(k_accept){
		menu_sequence(sqMenuOut);
		audio_play_sound(snd_FX_Select,1,false);
		IN_PAUSE = false;
		oMenuManage.InSelection = false; 
	}
	
}
///Esta funcion Ejecuta lo necesario para el buton de resolucion
function fnResolutionButtom(){
	 
	 var _cursor = keyboard_check_pressed(kRight) - keyboard_check_pressed(kLeft);
	
	///Solo se ejecuta si en objeto menu lo selecciona
	if oMenuManage.InSelection{
		
		//Sonido de movimiento por el menu
		if keyboard_check_pressed(kRight) or keyboard_check_pressed(kLeft){
		audio_play_sound(snd_Fx_MenuMove,1,false);
		}
		
		 //Actualiza el multiplicador de la resolucion y lo limita a 1 y al maximo de la pantalla
		 CURR_RES += _cursor;
		 CURR_RES = clamp(CURR_RES,1,display_get_width() / UI_Width);
		 
		 ///Actualiza el texto segun la resolucion para representtar el texto del tamaño especifico
		 if CURR_RES * UI_Width = display_get_width() texto = "Resolution\n< FullScreen >"
		 else texto = "Resolution" + "\n< " + string(UI_Width * CURR_RES) + " x " + string(UI_Height * CURR_RES) + " >"; 
		
		 // Accion al tocar la tecla de seleccion
		 if keyboard_check_pressed(kAccept) {
			 
			 //Sonido de confirmacion
			 audio_play_sound(snd_FX_Select,1,false);
			 
			 ///Si es el maximo de resolucion cambia a pantalla completa
			 if CURR_RES * UI_Width = display_get_width(){ 
				 
				 window_set_fullscreen(true);
				 
			 }else { ///Cambia el tamaño de la pantalla y la centra
				  
				window_set_fullscreen(false);
				window_set_size(UI_Width * CURR_RES , UI_Height * CURR_RES);
				window_center();
				
			 }
			 
			 
		}
	 //Regresa el texto al original
	}else texto = "Resolution";
}
///Esta funcion Ejecuta lo necesario para el buton de Volumen
function fnVolumenButtom(){
	
	///Esta variable solo se declara 1 vez cuando se usa esta funcion
	static option = 0;
	
	///Vectores de control
	var _cursor = keyboard_check_pressed(kRight) - keyboard_check_pressed(kLeft);
	var _volume_control = keyboard_check_pressed(kUP) - keyboard_check_pressed(kDown);
	
	if oMenuManage.InSelection{
		
		//Manejar la opcion
		option += _cursor;
		option = clamp(option,0,1);
		
	///Reproduce audio en los movimienttos de seleccion
	if keyboard_check_pressed(kRight) or keyboard_check_pressed(kLeft){
		audio_play_sound(snd_Fx_MenuMove,1,false);
	}
		
	if keyboard_check_pressed(kDown) or keyboard_check_pressed(kUP){
		audio_play_sound(snd_Fx_MenuMove,1,false);
	}
	
		///Opcion 0
		if option = 0{
			///Ajustamos el volumen de la musica
			Music_Volumen += _volume_control * 0.05;
			Music_Volumen = clamp(Music_Volumen,0,1);
			
			///Actualizamos el texto
			texto = "< Music Volume >\n" + string(round(Music_Volumen * 100)) + "%";
	
		}else if option = 1{ ///Opcion 1
			
			///Ajustamos el volumen de los efectos de sonido
			SFX_Volumen += 	_volume_control * 0.05;
			SFX_Volumen = clamp(SFX_Volumen,0,1);
			
			//Actualizamos el texto
			texto = "< SFX Volume >\n" + string(round(SFX_Volumen * 100)) + "%";
		}
		
		///Volumen en escala casi perfecta
		///Se pueden usar formulas aqui para hacer mas exacta la conversion de onda
		var _realMusic = power(Music_Volumen,2);
		var _realFX = power(SFX_Volumen,2);
		
		///Actualizamos la ganancia de cada grupo de sonido
		audio_group_set_gain(Music_Group,_realMusic,30);
		audio_group_set_gain(SFX_Group,_realFX,30);
		
		//Texto original
	}else texto = "Volume";
	
}
///Esta funcion Ejecuta lo necesario para el buton de Salida
function fnExitButtom(){
	
	///Si fue seleccionado
	if oMenuManage.InSelection{
		
		///Actualiza el texto y si preciona enter el juego se cierra
		texto = "You want to quit\nthe game??";	
		if keyboard_check_pressed(kAccept) game_end();
		
		///Texto original
	}else texto = "Exit";
	
}