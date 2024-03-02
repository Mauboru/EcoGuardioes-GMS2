if (current_frame <= fade_and_scale_duration) {
    var _scale_factor = 1 - current_frame / fade_and_scale_duration;
    
    image_alpha = current_frame / fade_and_scale_duration;
    image_xscale = _scale_factor;
    image_yscale = _scale_factor;

    current_frame++;
} else if (current_frame <= fade_and_scale_duration + pause_duration) {
    current_frame++;
} else {
    var _fade_out_frame = current_frame - (fade_and_scale_duration + pause_duration);
    var _fade_out_factor = 1 - _fade_out_frame / fade_and_scale_duration;

    image_alpha = _fade_out_factor;

    current_frame++;

    if (_fade_out_frame >= fade_and_scale_duration) {
        if (image_index < image_number - 1) {
            var _novo_credito = instance_create_layer(x, y, layer, obj_credits);
            _novo_credito.image_index = image_index + 1;
            _novo_credito.image_alpha = 0;
			instance_destroy();
        } else {
			transition(rm_menu);
			 instance_destroy();
        }
    }
}
