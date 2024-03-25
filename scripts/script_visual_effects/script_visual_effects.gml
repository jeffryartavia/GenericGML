// Use en el evento DRAW, requiere una "Variable definition" this_alpha = 0.
function scr_fade_in_draw_alpha() {
    this_alpha = clamp(this_alpha + (0.02 * global.delta_multiplier), 0, 1);
    if (this_alpha >= 1) {
        return true;
    }
    draw_set_alpha(this_alpha);
}

//use in DRAW event, requires "Variable definition" this_alpha = 1.
function scr_fade_out_draw_alpha(){
	this_alpha = clamp(this_alpha - (0.02*global.delta_multiplier), 0, 1) ;
	if (this_alpha <= 0) {
	    instance_destroy();
	}
	draw_set_alpha(this_alpha);
}

//use in STEP event, requires image_alpha = 0 in CREATE event;
function scr_fade_in_image_alpha(){
	image_alpha +=  clamp((0.02 * global.delta_multiplier), 0, 1);

	if (image_alpha >= 1) {
		return true;
	}
}

//use in STEP event, requires image_alpha = 1 in CREATE event;
function scr_fade_out_image_alpha(){
	image_alpha -=  clamp((0.02 * global.delta_multiplier), 0, 1);

	if (image_alpha <= 0) {
		return true;
	}
}