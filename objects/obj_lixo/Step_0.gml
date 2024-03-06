if (room_get_name(room) == "rm_jogo") {
    if (clicado) {
        x = mouse_x;
        y = mouse_y;
        
        vspeed = 0;
        hspeed = 0;
    } else {
        vspeed += gravidade;
        x += hspeed;
        y += vspeed;
        
        x_anterior = x;
        y_anterior = y;

        if (place_meeting(x, y + 1, obj_limite)) {
            y = obj_limite.y - obj_limite.sprite_height / 2;
            vspeed = 0;
        }

        if (place_meeting(x + 1, y, obj_limite)) {
            hspeed *= -1;
        }
    }
} else {
	var _flutuacao_amplitude = 10;
	var _flutuacao_velocidade = 0.05;
	var _flutuacao_contador = 0;

	y += sin(_flutuacao_contador) * _flutuacao_amplitude;
	_flutuacao_contador += _flutuacao_velocidade;

	if (y <= 300) {
	    y = 300;
	    _flutuacao_contador = 0; // Reinicia o contador ao atingir a altura máxima
	}
}