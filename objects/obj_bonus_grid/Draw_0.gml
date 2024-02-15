draw_self()

//Se for diferente de 0 ele vai desenhar
if(ds_grid_get(obj_controller.bonus_escolhidos, 1, bonus) != 0){
	draw_text(x + 6, y, string(obj_controller.bonus_escolhidos[# 1, bonus]));
	sprite_index = spr_bonus_select;
}else{
	sprite_index = spr_bonus;
}