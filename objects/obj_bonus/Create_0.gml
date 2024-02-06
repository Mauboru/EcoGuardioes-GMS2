randomize();
depth = -10000;

// Variáveis
global.tipo_mapeamento = ["tempo", "lixeiro", "plastico", "metal", "vidro", "papel"];
destacado = false;
selecionado = false;
pressionando_bonus = false;
tempo_pressao = 0;
tempo_maximo_pressao = 55;

// Verificando se foi criado ao fim de partida ou durante partida
//Fim de partida
if (global.encheu) {
	gera_tipos();
    array_push(global.tipos_existentes, tipo);
    image_index = tipo;
}