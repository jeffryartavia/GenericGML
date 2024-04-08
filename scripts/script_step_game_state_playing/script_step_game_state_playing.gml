function step_game_state_playing(){
	if (!instance_exists(obj_transition_room)) {
		
		
		if (KEY_ENTER_PRESSED || global.joy_start_pressed[0]) {
		    
			if (!instance_exists(obj_menu_paused)) {
				instance_create_layer(CENTER_HORIZONTAL_CAMERA0, CENTER_VERTICAL_CAMERA0 + 100, "Instances", obj_menu_paused);
			}
			
		}
	}
}