if (destacado) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, image_blend, image_alpha);
} else if (selecionado){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, image_blend, image_alpha);
}else {
    draw_self();
}

/*Se for diferente de 0 ele vai desenhar
if(ds_grid_get(obj_controller.bonus_escolhidos, 1, bonus) != 0){
	draw_text(x + 6, y, string(obj_controller.bonus_escolhidos[# 1, bonus]));
	sprite_index = spr_bonus_select;
}else{
	sprite_index = spr_bonus;
}*/