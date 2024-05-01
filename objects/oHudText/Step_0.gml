if charging == true {
	if (fade_in >= 1) {
	    image_alpha = 1;
	    image_xscale = 0.3;
	    image_yscale = 0.3;
	
		timerText -= 2
	
		if (timerText <= 0){
			fade_out -= 0.01;
			image_alpha = fade_out;
		}
	
		if fade_out <= 0 {
			instance_destroy();
		}
	} else {
		fade_in += 0.01;
	    image_alpha = fade_in;
	    image_xscale -= 0.007;
	    image_yscale -= 0.007;
	}
}