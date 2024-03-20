if (clicado) {
    if (room_get_name(room) == "rm_jogo") {
        physics_apply_force(mouse_x, mouse_y, 1000, 1000);
    }
}

 physics_apply_force(mouse_x, mouse_y, 0, 0);