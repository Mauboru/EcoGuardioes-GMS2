draw_set_font(fnt_pixel);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_self();

/*
if iconImage != noone{
	
	draw_sprite(iconImage, 0, x,y);
	
}*/

draw_text(x,y, texto);

draw_set_font(-1)
draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);