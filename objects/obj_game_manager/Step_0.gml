// Delta Time Update: delta_multiplier
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;

view_port_width = view_wport[0];
view_port_height = view_hport[0];

// State Machine of the whole game.
switch(game_state){
	case GAME_STATES.CREDITS: script_game_state_credits(); break;
	case GAME_STATES.MAIN_MENU: script_game_state_main_menu(); break;
	case GAME_STATES.PAUSED: script_game_state_paused(); break;	
	case GAME_STATES.PLAYING: script_game_state_playing(); break;
	case GAME_STATES.SPLASH: script_game_state_splash(); break;
	case GAME_STATES.TUTORIAL: script_game_state_tutorial(); break;
}
