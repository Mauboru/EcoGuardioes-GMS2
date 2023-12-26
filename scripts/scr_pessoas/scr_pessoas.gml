//funcao q cria inimigos
function criar_pessoas(){
	xx = choose(32, 608);
    var __pessoas = instance_create_layer(xx, 448, "Instances", obj_pessoas);
    __pessoas.image_yscale = 0.5;
    __pessoas.image_xscale = 0.5;
}

var _2 = 2;