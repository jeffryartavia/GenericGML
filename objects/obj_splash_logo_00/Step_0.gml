if (!aparecio && anim_grow_image_scale(1.1)) {
	aparecio = true;
}

if (aparecio) {
	if (fade_out_image_alpha()) {
		if (!instance_exists(obj_transition_room)) {
			instance_create_layer(x,y,"Instances", obj_transition_room, {_next_room: rm_main_menu_screen});
			global.game_state = GAME_STATES.MAIN_MENU;
		}
			
	}
}