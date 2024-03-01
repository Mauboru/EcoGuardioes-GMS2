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
         instance_destroy();
    }
}