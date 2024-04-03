// or you can check "sprite event"
if event_data[? "event_type"] == "sequence event" {
	switch (event_data[? "message"]) {
		case "splash_uned_end":
			instance_create_depth(x, y, DEPTH_OBJ_FADE_OUT_ROOM, obj_fade_out_room,{next_room_param : rm_main_menu_screen});
			global.game_state = GAME_STATES.MAIN_MENU;
		break;

		//case "destroy":
		//    sequence_destroy(event_data[? "element_id"]);
		//break;
	}
}