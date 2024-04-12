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

constants();

// STARTING GAME STATE
global.game_state = GAME_STATES.SPLASH;


global.fnt_menu_option = font_add("Arial.TTF", 50, false, false, 0, 0);//Arial, Verdana, Corbel, Georgia, Tahoma, Candara
global.fnt_credits = font_add("Arial.TTF", 40, true, true, 32, 128);