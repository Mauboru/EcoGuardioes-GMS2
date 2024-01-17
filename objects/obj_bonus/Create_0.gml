randomize();
depth = -10000;

// Variáveis
tipo_mapeamento = ["tempo", "lixeiro", "plastico", "metal", "vidro", "papel"];
destacado = false;
selecionado = false;
pressionando_bonus = false;
tempo_pressao = 0;
tempo_maximo_pressao = 55;

// Verificando se foi criado ao fim de partida ou durante partida
//Fim de partida
if (global.encheu) {
    tipo = irandom(array_length(tipo_mapeamento) - 1);
	
    // Verificando se obj_bonus existe
    if (instance_exists(obj_bonus)) {
        // Garantindo que obj_bonus n seja do tipo repetido anterior
		for (var _i = 0; _i < array_length(global.tipos_existentes); _i++){
			if (global.tipos_existentes[_i] == tipo){
				tipo = irandom(array_length(tipo_mapeamento) - 1);
			}
		}
        array_push(global.tipos_existentes, tipo);
        image_index = tipo;
    }
}