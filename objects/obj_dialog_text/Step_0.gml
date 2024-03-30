if (!instance_exists(obj_fade_out_room)) {

	if (!is_writing_finished) {
	    if (letter_count < string_length(current_text)) {
	        letter_count += writing_speed/* * global.delta_multiplier*/;
	    } else {
	        is_writing_finished = true;
	    }
	}

}





