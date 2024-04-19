var waterColision = instance_place(x, y, obj_agua)

if  room_get_name(room) == "rm_jogo" {
	if (clicado) {
		phy_position_x = mouse_x;
		phy_position_y = mouse_y;
	}
}

if room_get_name(room) == "rm_fim_de_jogo"{
	if waterColision {
			phy_position_y -= 1;
	}
}