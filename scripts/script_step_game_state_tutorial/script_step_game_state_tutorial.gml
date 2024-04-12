function step_game_state_tutorial(){
	if (!instance_exists(obj_transition_room)) {
		
		if (!instance_exists(obj_tutorial)) {
		    instance_create_layer(CENTER_HORIZONTAL_CAMERA0, CENTER_VERTICAL_CAMERA0, "Instances", obj_tutorial);
		}

		if (KEY_ESCAPE || JOY_FACE2[0]) {
			global.game_state = GAME_STATES.PLAYING;
			if (!instance_exists(obj_transition_room)) {
				instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_transition_room,{_next_room : rm_stage_001});
			}
		}
		
	}
}