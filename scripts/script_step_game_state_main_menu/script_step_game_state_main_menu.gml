function step_game_state_main_menu(){
	if (!instance_exists(obj_transition_room)) {
		
		if (!instance_exists(obj_game_logo)) {
			game_logo = instance_create_layer(CAMERA0_WIDTH_CENTER, CAMERA0_HEIGHT_CENTER,"Instances",obj_game_logo);
			
		}

		if ( (KEY_ENTER || global.joy_face1[0]) && game_logo.aparecio) {
			global.game_state = GAME_STATES.TUTORIAL;
			instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_transition_room,{next_room_param : rm_tutorial_01});
		}
		
	}
}