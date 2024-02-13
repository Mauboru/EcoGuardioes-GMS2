// Objeto obj_bonus
randomize();
depth = -10000;

// Variáveis específicas do objeto
destacado = false;
selecionado = false;
pressionando_bonus = false;
tempo_pressao = 0;
tempo_maximo_pressao = 55;

// Variáveis globais ou locais apropriadas
global.tipo_mapeamento = ["tempo", "lixeiro", "plastico", "metal", "vidro", "papel"];

// Função para gerar tipos
function gera_tipos(){
    var _valor = irandom(array_length(global.tipo_mapeamento) - 1);
    
    // Verifica se o valor criado já existe dentro de valores existentes
    for(var _i = 0; _i < array_length(global.tipos_existentes); _i++){
        if (_valor == global.tipos_existentes[_i]){
            return gera_tipos();
        }
    }
    return _valor;
}

if (global.encheu) {    
    tipo = gera_tipos();
    array_push(global.tipos_existentes, tipo);
    image_index = tipo;
}