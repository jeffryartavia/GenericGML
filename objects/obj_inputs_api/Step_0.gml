#region SHORTKEYS
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
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_F12_PRESSED){
		hide_all_debug_monitors();
		show_debug_console = !show_debug_console;
		show_debug_log(show_debug_console);
	}
	if (!show_debug_console) {
	    show_debug_log(show_debug_console);
	}
	
	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_SUBTRACT_PRESSED) {
		global.debug_text_color = c_black;
	}

	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_DIVIDE_PRESSED) {
	    global.debug_text_color = c_gray;
	}

	if (KEY_CONTROL_ANY && KEY_SHIFT_ANY && KEY_ADD_PRESSED) {
	    global.debug_text_color = c_white;
	}
	
#endregion

#region GAMEPAD STICK L R AS PADS UPDATES.
	
var _gp_num = gamepad_get_device_count(); //siempre es 12
	
for (var _i = 0; _i < _gp_num; _i++;){
	
	if gamepad_is_connected(_i) {
		
		gamepad_set_axis_deadzone(_i, global.gamepad_dead_zone);
		gamepad_set_button_threshold(_i, global.gamepad_button_threshold);
		
		
		
		
		//JOY_STICKL_PADL_0
		global.joy_stickl_padl_pressed[_i] = false;
		if ( joy_stickl_padl_pressed_flag[_i] == false && JOY_STICKL_PADL[_i] == true ){
			global.joy_stickl_padl_pressed[_i] = true;
			joy_stickl_padl_pressed_flag[_i] = true;
		}
		if ( joy_stickl_padl_pressed_flag[_i] == true && JOY_STICKL_PADL[_i] == false ){
			global.joy_stickl_padl_pressed[_i] = false;
			joy_stickl_padl_pressed_flag[_i] = false;
		}
			
		global.joy_stickl_padl_released[_i] = false;
		if ( joy_stickl_padl_released_flag[_i] == false && JOY_STICKL_PADL[_i] == false ){
			global.joy_stickl_padl_released[_i] = true;
			joy_stickl_padl_released_flag[_i] = true;
		}
		if ( joy_stickl_padl_released_flag[_i] == true && JOY_STICKL_PADL[_i] == true ){
			global.joy_stickl_padl_released[_i] = false;
			joy_stickl_padl_released_flag[_i] = false;
		}


		//JOY_STICKL_PADR_0
		global.joy_stickl_padr_pressed[_i] = false;
		if ( joy_stickl_padr_pressed_flag[_i] == false && JOY_STICKL_PADR[_i] == true ){
			global.joy_stickl_padr_pressed[_i] = true;
			joy_stickl_padr_pressed_flag[_i] = true;
		}
		if ( joy_stickl_padr_pressed_flag[_i] == true && JOY_STICKL_PADR[_i] == false ){
			global.joy_stickl_padr_pressed[_i] = false;
			joy_stickl_padr_pressed_flag[_i] = false;
		}
			
		global.joy_stickl_padr_released[_i] = false;
		if ( joy_stickl_padr_released_flag[_i] == false && JOY_STICKL_PADR[_i] == false ){
			global.joy_stickl_padr_released[_i] = true;
			joy_stickl_padr_released_flag[_i] = true;
		}
		if ( joy_stickl_padr_released_flag[_i] == true && JOY_STICKL_PADR[_i] == true ){
			global.joy_stickl_padr_released[_i] = false;
			joy_stickl_padr_released_flag[_i] = false;
		}


		//JOY_STICKL_PADU_0
		global.joy_stickl_padu_pressed[_i] = false;
		if ( joy_stickl_padu_pressed_flag[_i] == false && JOY_STICKL_PADU[_i] == true ){
			global.joy_stickl_padu_pressed[_i] = true;
			joy_stickl_padu_pressed_flag[_i] = true;
		}
		if ( joy_stickl_padu_pressed_flag[_i] == true && JOY_STICKL_PADU[_i] == false ){
			global.joy_stickl_padu_pressed[_i] = false;
			joy_stickl_padu_pressed_flag[_i] = false;
		}
			
		global.joy_stickl_padu_released[_i] = false;
		if ( joy_stickl_padu_released_flag[_i] == false && JOY_STICKL_PADU[_i] == false ){
			global.joy_stickl_padu_released[_i] = true;
			joy_stickl_padu_released_flag[_i] = true;
		}
		if ( joy_stickl_padu_released_flag[_i] == true && JOY_STICKL_PADU[_i] == true ){
			global.joy_stickl_padu_released[_i] = false;
			joy_stickl_padu_released_flag[_i] = false;
		}


		//JOY_STICKL_PADD_0
		global.joy_stickl_padd_pressed[_i] = false;
		if ( joy_stickl_padd_pressed_flag[_i] == false && JOY_STICKL_PADD[_i] == true ){
			global.joy_stickl_padd_pressed[_i] = true;
			joy_stickl_padd_pressed_flag[_i] = true;
		}
		if ( joy_stickl_padd_pressed_flag[_i] == true && JOY_STICKL_PADD[_i] == false ){
			global.joy_stickl_padd_pressed[_i] = false;
			joy_stickl_padd_pressed_flag[_i] = false;
		}
			
		global.joy_stickl_padd_released[_i] = false;
		if ( joy_stickl_padd_released_flag[_i] == false && JOY_STICKL_PADD[_i] == false ){
			global.joy_stickl_padd_released[_i] = true;
			joy_stickl_padd_released_flag[_i] = true;
		}
		if ( joy_stickl_padd_released_flag[_i] == true && JOY_STICKL_PADD[_i] == true ){
			global.joy_stickl_padd_released[_i] = false;
			joy_stickl_padd_released_flag[_i] = false;
		}
		
		
		
		
		//JOY_STICKR_PADL_0
		global.joy_stickr_padl_pressed[_i] = false;
		if ( joy_stickr_padl_pressed_flag == false && JOY_STICKR_PADL[_i] == true ){
			global.joy_stickr_padl_pressed[_i] = true;
			joy_stickr_padl_pressed_flag = true;
		}
		if ( joy_stickr_padl_pressed_flag == true && JOY_STICKR_PADL[_i] == false ){
			global.joy_stickr_padl_pressed[_i] = false;
			joy_stickr_padl_pressed_flag = false;
		}
			
		global.joy_stickr_padl_released[_i] = false;
		if ( joy_stickr_padl_released_flag == false && JOY_STICKR_PADL[_i] == false ){
			global.joy_stickr_padl_released[_i] = true;
			joy_stickr_padl_released_flag = true;
		}
		if ( joy_stickr_padl_released_flag == true && JOY_STICKR_PADL[_i] == true ){
			global.joy_stickr_padl_released[_i] = false;
			joy_stickr_padl_released_flag = false;
		}


		//JOY_STICKR_PADR_0
		global.joy_stickr_padr_pressed[_i] = false;
		if ( joy_stickr_padr_pressed_flag == false && JOY_STICKR_PADR[_i] == true ){
			global.joy_stickr_padr_pressed[_i] = true;
			joy_stickr_padr_pressed_flag = true;
		}
		if ( joy_stickr_padr_pressed_flag == true && JOY_STICKR_PADR[_i] == false ){
			global.joy_stickr_padr_pressed[_i] = false;
			joy_stickr_padr_pressed_flag = false;
		}
			
		global.joy_stickr_padr_released[_i] = false;
		if ( joy_stickr_padr_released_flag == false && JOY_STICKR_PADR[_i] == false ){
			global.joy_stickr_padr_released[_i] = true;
			joy_stickr_padr_released_flag = true;
		}
		if ( joy_stickr_padr_released_flag == true && JOY_STICKR_PADR[_i] == true ){
			global.joy_stickr_padr_released[_i] = false;
			joy_stickr_padr_released_flag = false;
		}


		//JOY_STICKR_PADU_0
		global.joy_stickr_padu_pressed[_i] = false;
		if ( joy_stickr_padu_pressed_flag == false && JOY_STICKR_PADU[_i] == true ){
			global.joy_stickr_padu_pressed[_i] = true;
			joy_stickr_padu_pressed_flag = true;
		}
		if ( joy_stickr_padu_pressed_flag == true && JOY_STICKR_PADU[_i] == false ){
			global.joy_stickr_padu_pressed[_i] = false;
			joy_stickr_padu_pressed_flag = false;
		}
			
		global.joy_stickr_padu_released[_i] = false;
		if ( joy_stickr_padu_released_flag == false && JOY_STICKR_PADU[_i] == false ){
			global.joy_stickr_padu_released[_i] = true;
			joy_stickr_padu_released_flag = true;
		}
		if ( joy_stickr_padu_released_flag == true && JOY_STICKR_PADU[_i] == true ){
			global.joy_stickr_padu_released[_i] = false;
			joy_stickr_padu_released_flag = false;
		}


		//JOY_STICKR_PADD_0
		global.joy_stickr_padd_pressed[_i] = false;
		if ( joy_stickr_padd_pressed_flag == false && JOY_STICKR_PADD[_i] == true ){
			global.joy_stickr_padd_pressed[_i] = true;
			joy_stickr_padd_pressed_flag = true;
		}
		if ( joy_stickr_padd_pressed_flag == true && JOY_STICKR_PADD[_i] == false ){
			global.joy_stickr_padd_pressed[_i] = false;
			joy_stickr_padd_pressed_flag = false;
		}
			
		global.joy_stickr_padd_released[_i] = false;
		if ( joy_stickr_padd_released_flag == false && JOY_STICKR_PADD[_i] == false ){
			global.joy_stickr_padd_released[_i] = true;
			joy_stickr_padd_released_flag = true;
		}
		if ( joy_stickr_padd_released_flag == true && JOY_STICKR_PADD[_i] == true ){
			global.joy_stickr_padd_released[_i] = false;
			joy_stickr_padd_released_flag = false;
		}
		
		
		
		
	}
}
#endregion


	
			
