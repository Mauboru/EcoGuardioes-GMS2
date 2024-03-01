if image_index < 1{
	var _novo_credito = instance_create_layer(x, y, layer, obj_credits)
	_novo_credito.image_index++;
	_novo_credito.image_alpha = 0;
} else transition(rm_menu);