function step_game_state_playing(){
	if (!instance_exists(obj_transition_room)) {
		
		//SHOW / HIDE PAUSED MENU
		if (!instance_exists(obj_menu_paused)) {
			if (KEY_ENTER_PRESSED || KEY_ESCAPE_PRESSED || JOY_START_PRESSED[0]) {
				if (!instance_exists(obj_menu_paused)) {
				    instance_create_layer(CENTER_HORIZONTAL_CAMERA0, CENTER_VERTICAL_CAMERA0 + 100, "Instances", obj_menu_paused);
				}
			}			
		} else {
			if (KEY_ESCAPE_PRESSED || JOY_FACE2_PRESSED[0] || JOY_START_PRESSED[0]) {
				
				audio_play_sound(snd_resume, 1, false);
			
				//if (instance_exists(obj_option_menu_paused)) {
					instance_destroy(obj_option_menu_paused);
				//}
			
				instance_destroy(obj_menu_paused);
			}
		}
		
	}
}