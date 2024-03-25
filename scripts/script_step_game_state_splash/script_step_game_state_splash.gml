function step_game_state_splash(){
	if (!instance_exists(obj_fade_out_room)) {
		
		if (!instance_exists(obj_splash_logo1)) {
			instance_create_layer(view_port_width/2, view_port_height/2,"Instances",obj_splash_logo1);
		}
	
		if (global.broadcast.splash_logo1_end) {
				instance_create_depth(x,y,-999, obj_fade_out_room,{next_room_param : rm_main_menu_screen});
				global.game_state = GAME_STATES.MAIN_MENU;
		}
		
	}
}