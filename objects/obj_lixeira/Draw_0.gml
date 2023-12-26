if (destacado) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, image_blend, image_alpha);
} else {
    draw_self();
}