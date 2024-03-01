globalvar timer, timer_vel, _fase_terminou, fase, pontos, erros, tipos_existentes, tipo_mapeamento, is_bonus;

timer =20;
timer_vel = .02;
_fase_terminou = true; //Remover isso
fase = 1;
pontos = 0;
erros = 0;
tipos_existentes = [];
tipo_mapeamento = ["tempo", "lixeiro", "plastico", "metal", "vidro", "papel"];
is_bonus = false;

function is_room(_room, _room_atual){
	if _room_atual != _room return true;
	else return false;
}

function gera_tipos(){
    var _valor = irandom(array_length(tipo_mapeamento) - 1);
    
    // Verifica se o valor criado já existe dentro de valores existentes
    for(var _i = 0; _i < array_length(tipos_existentes); _i++){
        if (_valor == tipos_existentes[_i]){
            return gera_tipos();
        }
    }
    return _valor;
}

function reiniciar(){	
	fase++;
	timer += 60 * fase;
	//pontos -= _lixos * 2;
	erros = 0;
	encheu = false;
	
	//Destruindo pq n sei como fazer de outro jeito
	instance_destroy(obj_lixo);
}

function drawing(_font,  _color, _valign, _halign, _x, _y, _text){
	draw_set_font(_font);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	draw_set_color(_color)
	draw_text(_x, _y, _text);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_color(-1)
}

function transition(_room){
	if (!instance_exists(obj_transition)){
		var _tran = instance_create_layer(0, 0, "Transitions", obj_transition);
		_tran.destino = _room;
	}
}