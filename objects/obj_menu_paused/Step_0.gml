var _use_keyboard = true;
var _gp_num = gamepad_get_device_count();
for (var _i = 0; _i < _gp_num; _i++) {
    if gamepad_is_connected(_i){
		_use_keyboard = false;
		key_up = global.joy_padu_pressed[_i] || global.joy_stickl_padu_pressed[_i] || KEY_W_PRESSED || KEY_UP_PRESSED || MB_WHEEL_UP;
		key_down = global.joy_padd_pressed[_i] || global.joy_stickl_padd_pressed[_i] ||  KEY_S_PRESSED || KEY_DOWN_PRESSED || MB_WHEEL_DOWN;

	}
}

if (_use_keyboard) {
    key_up = KEY_W_PRESSED || KEY_UP_PRESSED || MB_WHEEL_UP;
	key_down = KEY_S_PRESSED || KEY_DOWN_PRESSED || MB_WHEEL_DOWN;
}

var _menu_move = key_down - key_up;
current_button += _menu_move;

// Wrap around the last and first menu items.
if (current_button < 0) current_button = arr_buttons_length - 1;
if (current_button > arr_buttons_length - 1) current_button = 0;

//if (menu_index != last_selected) audio_play_sound(soundMenuSwitch, 1, false);

if (global.joy_face1_pressed[0] || KEY_ENTER_PRESSED || (collision_point(mouse_x, mouse_y, obj_option_menu_paused, false,true) && MB_LEFT_PRESSED ) ) {
	
	audio_play_sound(snd_option_select, 1, false);
	
	switch(current_button) {
		case 0:
			if (instance_exists(obj_option_menu_paused)) {
			    instance_destroy(obj_option_menu_paused);
			}
			
			instance_destroy();
			break;
			
		case 1:
			global.game_state = GAME_STATES.MAIN_MENU;
			instance_create_depth(x,y, DEPTH_OBJ_FADE_OUT_ROOM, obj_transition_room,{_next_room : rm_main_menu_screen});
			break;
	}
}