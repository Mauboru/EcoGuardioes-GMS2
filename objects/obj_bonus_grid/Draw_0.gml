draw_self()

var _tam = sprite_height;
//Desenhando os icones
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 0], x, y + 0);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 1], x, y + _tam * 1);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 2], x, y + _tam * 2);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 3], x, y + _tam * 3);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 4], x, y + _tam * 4);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 5], x, y + _tam * 5);

//Se for diferente de 0 ele vai desenhar
for(var _i = 0; _i < 6; _i++){
	if(ds_grid_get(bonus_escolhidos, 1, _i) != 0){
		draw_sprite(spr_bonus_select, _i, x, y + (_i * _tam));
		draw_text(x + 6, y + ( _i * 52), string(bonus_escolhidos[# 1, _i]));
	}
}