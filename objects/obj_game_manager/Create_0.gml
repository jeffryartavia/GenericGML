// Delta Time Definition. - se actualiza en el step.
global.target_delta = 1/60;
global.actual_delta = delta_time / 1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;

// All posible game states
enum GAME_STATES {
	CREDITS,
	MAIN_MENU,
	PAUSED,
	PLAYING,
	SPLASH,
	TUTORIAL
}

// state of the game definition.
game_state = GAME_STATES.SPLASH;

view_port_width = view_wport[0];
view_port_height = view_hport[0];


show_debug_log(false);