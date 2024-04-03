function draw_game_state_splash(){
	if (!instance_exists(obj_fade_out_room)) {
		
		if (!instance_exists(obj_splash_logo_00)) {
		    instance_create_layer(CAMERA0_WIDTH_CENTER, CAMERA0_HEIGHT_CENTER, "Instances", obj_splash_logo_00);
		}
		
	}
}