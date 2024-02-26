event_inherited();

// Defina o tamanho da fonte desejado (substitua 8 pelo tamanho desejado)
var tamanho_da_fonte = 8;

draw_set_font(fnt_pixel);

// Verifique se a fonte é válida antes de definir o tamanho da fonte
if (font_exists(fnt_pixel)) {
    //draw_set_font_size(tamanho_da_fonte);

    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(x, y, texto);

    // Restaure as configurações padrão
    draw_set_font(-1);
    draw_set_color(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
   // draw_set_font_size(-1); // Certifique-se de redefinir o tamanho da fonte para o padrão
} else {
    // Lida com o caso em que a fonte não existe
    show_error("A fonte fnt_pixel não existe.", 1);
}
