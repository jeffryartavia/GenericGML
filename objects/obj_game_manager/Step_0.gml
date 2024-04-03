// DELTA TIME UPDATE
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;

switch(global.game_state){
	case GAME_STATES.SPLASH: step_game_state_splash(); break;
	case GAME_STATES.MAIN_MENU: step_game_state_main_menu(); break;
	case GAME_STATES.TUTORIAL: step_game_state_tutorial(); break;
	case GAME_STATES.PLAYING: step_game_state_playing(); break;
	case GAME_STATES.PAUSED: step_game_state_paused(); break;	
	case GAME_STATES.CREDITS: step_game_state_credits(); break;
}

