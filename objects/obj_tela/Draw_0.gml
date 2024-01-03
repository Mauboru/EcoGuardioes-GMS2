//Desenha a imagem por cima
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha * alpha);

var _message = "Pontuacao: " + string(pontuacao) + "\nErros: " + string(erros) + "\nLixos: " + string(lixos);
var _typer_length = floor(string_length(_message) * alpha);

//Retangulo
draw_set_color(c_black);
draw_rectangle(room_width/2 - 150, room_height/2 - 50, room_width/2 + 150, room_height/2 + 100, false);
draw_set_color(c_white);
draw_set_halign(fa_left);

draw_set_font(fnt_hud);
draw_set_halign(fa_center);
draw_text_transformed_color(room_width/2, room_height/2, string_copy(_message, 1, _typer_length), 1, 1, 0, c_white, c_white, c_white, c_white, alpha);
draw_set_font(-1);
draw_set_halign(fa_left);