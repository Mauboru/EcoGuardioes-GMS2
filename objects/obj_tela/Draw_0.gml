draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha * alpha);

var _message = "Pontuações: " + string(pontuacao) + "\nErros: " + string(erros);
var _typer_length = floor(string_length(_message) * alpha); // Comprimento da mensagem baseado no valor de alpha

draw_set_font(fnt_hud); // Substitua "NomeDaSuaFonte" pelo nome da sua fonte
draw_set_halign(fa_center); // Configura o alinhamento horizontal para centralizar

draw_text_transformed_color(room_width/2, room_height/2, string_copy(_message, 1, _typer_length), 1, 1, 0, c_white, c_white, c_white, c_white, alpha);

draw_set_font(-1); // Restaura a fonte padrão
draw_set_halign(fa_left); // Restaura o alinhamento horizontal padrão