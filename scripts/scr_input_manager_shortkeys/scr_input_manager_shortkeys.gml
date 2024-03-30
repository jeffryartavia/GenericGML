function input_manager_shortkeys(){
	//STEP
	if (KEY_ESCAPE_PRESSED){
		hide_all_debug_monitors();
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F1_PRESSED){
		hide_all_debug_monitors();
		show_keyboard_debug = !show_keyboard_debug;
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F2_PRESSED){
		hide_all_debug_monitors();
		show_mouse_debug = !show_mouse_debug;
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F3_PRESSED){
		hide_all_debug_monitors();
		show_gamepad_debug = !show_gamepad_debug;
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F4_PRESSED){
		hide_all_debug_monitors();
		show_game_info = !show_game_info;
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F12_PRESSED){
		hide_all_debug_monitors();
		show_debug_console = !show_debug_console;
		show_debug_log(show_debug_console);
	}
	
	if (!show_debug_console) {
	    show_debug_log(show_debug_console);
	}
}

function hide_all_debug_monitors(){
	show_keyboard_debug = false;
	show_mouse_debug = false;
	show_gamepad_debug = false;
	show_debug_console = false;
	show_game_info = false;
}

function input_manager_shortkeys_draw(){
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_ADD) {
		global.debug_text_color = c_white;
	}

	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_SUBTRACT_PRESSED) {
	    global.debug_text_color = c_black;
	}
}