var _transition = function() {
	time_source_destroy(_time_source);
	instance_create_depth(x,y,-999, obj_fade,{siguiente : rm_main_menu_screen});
	global.game_state = GAME_STATES.MAIN_MENU;
}

_time_source = time_source_create(time_source_game, 2, time_source_units_seconds, _transition);
time_source_start(_time_source);