/* global.elapsed_time += global.target_delta * global.delta_multiplier; 
de esta forma elapsed_time se va incrementando en 1 por segundo.*/
// DELTA TIME DEFINITION
global.target_delta = 1/60;
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;

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

global.fade_in_speed = 0.02;
global.fade_out_speed = 0.02;