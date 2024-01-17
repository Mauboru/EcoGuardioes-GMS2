if (destacado) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, image_blend, image_alpha);
}else {
    draw_self();
}

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text(x, y, string(texto));
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(-1);