/// @description Insert description here
// You can write your code in this editor

var _change_game_state = function() {
	obj_game_manager.game_state = GAME_STATES.MAIN_MENU;
	room_goto(rm_lobby);
	instance_destroy(self);
}

_time_source = time_source_create(time_source_game, 2, time_source_units_seconds, _change_game_state);
time_source_start(_time_source);
