if in_pause exit;

if (!clicado) {
    var _lixo_na_posicao = instance_position(mouse_x, mouse_y, obj_lixo);

    if (_lixo_na_posicao != noone && _lixo_na_posicao == id) {
        clicado = true;
    }
}