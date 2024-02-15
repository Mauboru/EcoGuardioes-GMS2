draw_self()

//Desenhando os icones
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 0], x, y + 0);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 1], x, y + 35);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 2], x, y + 70);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 3], x, y + 105);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 4], x, y + 140);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 5], x, y + 175);

//Se for diferente de 0 ele vai desenhar
for(var _i = 0; _i < 5; _i++){
	if(ds_grid_get(bonus_escolhidos, 1, _i) != 0){
		draw_text(x + 6, y + ( _i * 32), string(bonus_escolhidos[# 1, _i]));
		draw_sprite(spr_bonus_select, _i, x, y + (_i * 32));
	}
}