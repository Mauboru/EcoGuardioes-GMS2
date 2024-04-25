if (fade_in >= 1) {
    image_alpha = 1;
    image_xscale = 0.3;
    image_yscale = 0.3;
	
	timer -= 2
	
	if (timer <= 0){
		fade_out -= 0.01;
		image_alpha = fade_out;
	}
	
	if fade_out <= 0 {
		if image_index >= image_number -1 {
			destruir = true;
			instance_destroy();
		}
		image_index++
		image_alpha = 0;
		image_xscale = 1;
		image_yscale = 1;
		timer = 60;
		fade_in = 0;
		fade_out = 1;
	}
} else {
	fade_in += 0.01;
    image_alpha = fade_in;
    image_xscale -= 0.007;
    image_yscale -= 0.007;
}