// DELTA TIME DEFINITION
global.target_delta = 1/60;
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;
global.delta_second = global.target_delta * global.delta_multiplier; // a Real Second in real time.

// GAME STATES
enum GAME_STATES {
	SPLASH,
	MAIN_MENU,
	TUTORIAL,
	PLAYING,
	PAUSED,
	CREDITS
}

// STARTING GAME STATE
global.game_state = GAME_STATES.SPLASH;


// VIEW PORTS SIZES
view_port_width = view_wport[0];
view_port_height = view_hport[0];


global.broadcast = {
	splash_logo1_end : false
}

constants();


switch(global.game_state){
	case GAME_STATES.SPLASH: layer_sequence_create("Assets_1", view_port_width / 2, view_port_height / 2, seq_splash_logo1); break;
	case GAME_STATES.MAIN_MENU:  break;
	case GAME_STATES.TUTORIAL:  break;
	case GAME_STATES.PLAYING:  break;
	case GAME_STATES.PAUSED:  break;	
	case GAME_STATES.CREDITS:  break;
}