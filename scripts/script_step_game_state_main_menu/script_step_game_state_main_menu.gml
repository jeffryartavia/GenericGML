function step_game_state_main_menu(){
	if (!instance_exists(obj_fade_out_room)) {
		
		if (!instance_exists(obj_game_brand_image)) {
			instance_create_layer(CAMERA0_WIDTH_CENTER, CAMERA0_HEIGHT_CENTER,"Instances",obj_game_brand_image);
			
		}

		if (KEY_ENTER) {
			global.game_state = GAME_STATES.TUTORIAL;
			instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_fade_out_room,{next_room_param : rm_tutorial_01});
		}
		
	}
}