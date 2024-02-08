depth = -y;

if (mudei) {
    alpha -= 0.02;
} else {
    alpha += 0.02;
}

// Limitando o valor de alpha entre 0 e 1
alpha = clamp(alpha, 0, 1);

// Me destruindo depois de transparente e mudado o background
if (mudei && alpha <= 0) {
	instance_destroy();
}

if(alpha == 1 and not is_bonus){
	//Inserindo os bonus
	for(var _i = 1; _i < 4; _i++){
		instance_create_layer(92 + _i * 72, 550, "Telas", obj_bonus);
	}
	
	var _botao = instance_create_layer(room_width/2, room_height/2 + 300, "Telas", obj_button);
	_botao.texto = "continuar";
	_botao.acao = "reiniciar";
	
	is_bonus = true;
}

//Resetando a variavel para que ela nao acumule
if(is_bonus) global.tipos_existentes = [];