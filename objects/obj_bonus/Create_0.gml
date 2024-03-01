randomize();

image_index = bonus;

destacado = false;
selecionado = false;
pressionando_bonus = false;
tempo_pressao = 0;
tempo_maximo_pressao = 55;

if (_fase_terminou) {    
    tipo = gera_tipos();
    array_push(tipos_existentes, tipo);
    image_index = tipo;
}