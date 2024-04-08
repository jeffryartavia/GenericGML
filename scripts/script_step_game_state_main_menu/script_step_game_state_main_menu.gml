function step_game_state_main_menu(){
	if (!instance_exists(obj_transition_room)) {
		
		if (!instance_exists(obj_game_logo)) {
			game_logo = instance_create_layer(CENTER_HORIZONTAL_CAMERA0, CENTER_VERTICAL_CAMERA0 - 220,"Instances",obj_game_logo);
			
		}
		
		if (game_logo.aparecio) {
		    if (!instance_exists(obj_menu_title)) {
			    instance_create_layer(CENTER_HORIZONTAL_CAMERA0, CENTER_VERTICAL_CAMERA0 + 100, "Instances", obj_menu_title);
			}
		}
	}
}