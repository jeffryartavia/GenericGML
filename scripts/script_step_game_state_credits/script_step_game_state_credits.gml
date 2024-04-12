function step_game_state_credits(){
	if (!instance_exists(obj_transition_room)) {
		if (KEY_ESCAPE_PRESSED || JOY_FACE2_PRESSED[0]) {
			global.game_state = GAME_STATES.MAIN_MENU;
			if (!instance_exists(obj_transition_room)) {
				instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_transition_room,{_next_room : rm_main_menu_screen});
			}
		}
	}
}