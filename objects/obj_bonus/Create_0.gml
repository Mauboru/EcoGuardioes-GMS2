randomize();
depth = -10000;

//Verificando se fui criado com tela ou no jogo
if(global.encheu){
	tipo_mapeamento = ["tempo", "luar", "plastico", "metal", "vidro", "papel"];
	tipo = irandom(array_length(tipo_mapeamento) - 1);
	image_index = tipo;
	destacado = false;
	quantidade = 0;
}else{
	tipo = noone;
	image_index = tipo;
	destacado = false;
}