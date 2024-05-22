if (fade_in >= 1) {
    image_alpha = 1;
    image_xscale = 0.3;
    image_yscale = 0.3;

    timerCredits -= 2;

    if (timerCredits <= 0) {
        fade_out -= 0.01;
        image_alpha = fade_out;
    }

    if (fade_out <= 0) {
        if (image_index >= image_number - 1) {
            destruir = true;
            visible = false;
			instance_destroy();
        } else {
            image_index++;
            image_alpha = 0;
            image_xscale = 1;
            image_yscale = 1;
            timerCredits = timerMaxCredits;
            fade_in = 0;
            fade_out = 1;
        }
    }
} else {
    fade_in += 0.01;
    image_alpha = fade_in;
    image_xscale = max(0.3, image_xscale - 0.007);
    image_yscale = max(0.3, image_yscale - 0.007);
}