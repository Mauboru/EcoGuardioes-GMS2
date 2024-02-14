draw_self()

//Desenhando os icones
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 0], x, y + 0);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 1], x, y + 35);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 2], x, y + 70);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 3], x, y + 105);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 4], x, y + 140);
draw_sprite(spr_bonus, bonus_escolhidos[# 0, 5], x, y + 175);

//Desenhando os numeros
draw_set_font(fnt_hud)
draw_text(x + 30, y + -8, string(bonus_escolhidos[# 1, 0]));
draw_text(x + 30, y + 24, string(bonus_escolhidos[# 1, 1]));
draw_text(x + 30, y + 56, string(bonus_escolhidos[# 1, 2]));
draw_text(x + 30, y + 88, string(bonus_escolhidos[# 1, 3]));
draw_text(x + 30, y + 120, string(bonus_escolhidos[# 1, 4]));
draw_text(x + 30, y + 152, string(bonus_escolhidos[# 1, 5]));
draw_set_font(-1)