function step_game_state_tutorial(){
	if (!instance_exists(obj_fade_out_room)) {
		
		//if (!instance_exists(obj_game_brand_image)) {
		//	instance_create_layer(view_port_width/2, (view_port_height/2)-200,"Instances",obj_game_brand_image);
		//}

		if (KEY_ENTER) {
			global.game_state = GAME_STATES.PLAYING;
			instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_fade_out_room,{next_room_param : rm_stage_001});
		}
		
	}
}