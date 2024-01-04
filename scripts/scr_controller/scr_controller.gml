function reiniciar(){
	var _lixos = obj_tela.lixos;
	
	global.timer = 120;
	global.encheu = false;
	global.fase++;
	global.pontos -= _lixos * 2;
	global.erros = 0;
	
	//Destruindo pq n sei como fazer de outro jeito
	instance_destroy(obj_lixo);
}