// DELTA TIME DEFINITION
global.target_delta = 1/60;
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;

// GAME STATES
enum GAME_STATES {
	CREDITS,
	MAIN_MENU,
	PAUSED,
	PLAYING,
	SPLASH,
	TUTORIAL
}

// STARTING GAME STATE
global.game_state = GAME_STATES.SPLASH;

// VIEW PORTS SIZES
view_port_width = view_wport[0];
view_port_height = view_hport[0];


