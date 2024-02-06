function gera_tipos(){
	tipo = irandom(array_length(global.tipo_mapeamento) - 1);
	
    // Garantindo que obj_bonus n seja do tipo repetido anterior
	for (var _i = 0; _i < array_length(global.tipos_existentes); _i++){
		if (global.tipos_existentes[_i] == tipo){
			tipo = irandom(array_length(global.tipo_mapeamento) - 1);
			gera_tipos();
		}
	}
}