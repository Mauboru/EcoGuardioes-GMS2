if  room_get_name(room) == "rm_jogo" {
	if (clicado) {
		phy_position_x = mouse_x;
		phy_position_y = mouse_y;
	}
}

if room_get_name(room) == "rm_fim_de_jogo"{
	//Criar um objagua que ira crescer invisvel junto do mangue na roomfimdejogo
	
	/*todos os objetos ao colidirem com ele irao ser jogados lentamente para cima
	porem sempre q perderem contato eles irao cair novamente na agua
	ao deixarem de colidir eles ganham um timer q os possibilita de afundar antes de serem jogados
	novamente para cima*/
}