if destruir 	{
	transition(rm_menu);
}else{
	var _credito = instance_create_layer(x, y, layer, obj_credits);
	_credito.image_index++;
}