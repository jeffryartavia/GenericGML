// Use en el evento DRAW, requiere una "Variable definition" this_alpha = 0.
// definir: aparecio = false; como bandera de bloqueo.
function fade_in_draw_alpha(_in_max=1) {
    this_alpha = clamp(this_alpha + (FADE_IN_SPEED * global.delta_multiplier), 0, _in_max);
    if (this_alpha >= _in_max) {
        draw_set_alpha(this_alpha);
		return true;		
    } else {
		return false;
	}
    
}

//use in DRAW event, requires "Variable definition" this_alpha = 1.
function fade_out_draw_alpha(_out_min=0){
	this_alpha = clamp(this_alpha - (FADE_OUT_SPEED*global.delta_multiplier), _out_min, 1) ;
	if (this_alpha <= _out_min) {
	    draw_set_alpha(this_alpha);
		instance_destroy();
	}
	
}

//use in STEP event, requires image_alpha = 0 in CREATE event;
function fade_in_image_alpha(_in_max=1){
	image_alpha +=  clamp((FADE_IN_SPEED * global.delta_multiplier), 0, _in_max);

	if (image_alpha >= _in_max) {
		is_max = true;
		return true;
	} else {
		return false;
	}
}

//use in STEP event, requires image_alpha = 1 in CREATE event;
function fade_out_image_alpha(_out_min=0){
	image_alpha -=  clamp((FADE_OUT_SPEED * global.delta_multiplier), _out_min, 1);

	if (image_alpha <= _out_min) {
		is_min = true;
		return true;
	} else {
		return false;
	}
}

function anim_grow_image_scale(_scale_max=1){
	if (image_xscale < _scale_max) {
	    image_xscale += GROW_RATE*global.delta_multiplier;
	}

	if (image_yscale < _scale_max) {
	    image_yscale += GROW_RATE*global.delta_multiplier;
	}
	
	if (image_xscale >= _scale_max) {
	    return true;
	}
}

function anim_shrink_image_scale(_scale_min=.9){

	if (image_xscale <_scale_max) {
	    image_xscale += SHRINK_RATE*global.delta_multiplier;
	}

	if (image_yscale < _scale_max) {
	    image_yscale += SHRINK_RATE*global.delta_multiplier;
	}
	
	if (image_xscale <= _scale_max) {
	    return true;
	}
}
