function step_game_state_playing(){

	if (!instance_exists(obj_dialog_text) && !instance_exists(obj_fade_out_room)) {
	    instance_create_layer(x, y, "Instances",obj_dialog_text);
	}
	

}