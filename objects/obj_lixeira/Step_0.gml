// Evento de colisão com o objeto lixo
if (place_meeting(x, y, obj_lixo)) {
    destacado = true; // Destacar a lixeira quando o lixo estiver sobre ela
}else{
	destacado = false;
}