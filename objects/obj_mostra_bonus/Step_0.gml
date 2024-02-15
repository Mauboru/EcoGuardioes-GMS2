// Aumentar o tamanho e fazer tremer enquanto o botão está sendo pressionado
tempo_pressao += 3;
var _fator_crescimento = tempo_pressao / tempo_maximo_pressao;
image_xscale = 1 + _fator_crescimento * vel;
image_yscale = 1 + _fator_crescimento * vel;
		
if(_fator_crescimento > 3){
	instance_destroy();
}