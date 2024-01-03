// Evento de colisão com o objeto lixo
if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
    destacado = true;
} else {
    destacado = false;
}