function step_game_state_splash(){
	
	if (!instance_exists(obj_main_splash)) {
		instance_create_layer(view_port_width/2, view_port_height/2,"Instances",obj_main_splash);
	}
	
}