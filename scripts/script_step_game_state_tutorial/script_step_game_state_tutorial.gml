function step_game_state_tutorial(){
	if (!instance_exists(obj_transition_room)) {
		
		if (!instance_exists(obj_tutorial)) {
		    instance_create_layer(CAMERA0_WIDTH_CENTER, CAMERA0_HEIGHT_CENTER, "Instances", obj_tutorial);
		}

		if (KEY_ENTER || global.joy_face1[0]) {
			global.game_state = GAME_STATES.PLAYING;
			instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_transition_room,{_next_room : rm_stage_001});
		}
		
	}
}