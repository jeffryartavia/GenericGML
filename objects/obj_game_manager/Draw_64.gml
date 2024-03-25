switch(global.game_state){
	case GAME_STATES.SPLASH: draw_game_state_splash(); break;
	case GAME_STATES.MAIN_MENU: draw_game_state_main_menu(); break;
	case GAME_STATES.TUTORIAL: draw_game_state_tutorial(); break;
	case GAME_STATES.PLAYING: draw_game_state_playing(); break;
	case GAME_STATES.PAUSED: draw_game_state_paused(); break;	
	case GAME_STATES.CREDITS: draw_game_state_credits(); break;
}