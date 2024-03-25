// obj_input_manager - step


function input_variable_definitions() {
	
	#region gamepad
	
	var _gp_num = gamepad_get_device_count(); //siempre es 12
	
	for (var _i = 0; _i < _gp_num; _i++;){
	
		if gamepad_is_connected(_i) {
		
			gamepad_set_axis_deadzone(_i, global.gamepad_dead_zone);
			gamepad_set_button_threshold(_i, 0.01); //Reduce el recorrido de los shoulderb casi a zero.
			
			global.joy_sticklh_value[_i] = gamepad_axis_value(_i, gp_axislh);
			global.joy_sticklv_value[_i] = gamepad_axis_value(_i, gp_axislv);
			global.joy_stickl_moving[_i] = (gamepad_axis_value(_i, gp_axislh) != 0 || gamepad_axis_value(_i, gp_axislv) != 0);
			global.joy_stickl_direction[_i] = point_direction(0, 0, gamepad_axis_value(_i, gp_axislh), gamepad_axis_value(_i, gp_axislv));
			global.joy_stickl_padl[_i] = sign( gamepad_axis_value(_i, gp_axislh) ) == -1;
			global.joy_stickl_padr[_i] = sign( gamepad_axis_value(_i, gp_axislh) ) == 1;
			global.joy_stickl_padu[_i] = sign( gamepad_axis_value(_i, gp_axislv) ) == -1;
			global.joy_stickl_padd[_i] = sign( gamepad_axis_value(_i, gp_axislv) ) == 1;
			global.joy_stickl[_i] = gamepad_button_check(_i, gp_stickl);
			global.joy_stickl_pressed[_i] = gamepad_button_check_pressed(_i, gp_stickl);
			global.joy_stickl_released[_i] = gamepad_button_check_released(_i, gp_stickl);

			global.joy_stickrh_value[_i] = gamepad_axis_value(_i, gp_axisrh);
			global.joy_stickrv_value[_i] = gamepad_axis_value(_i, gp_axisrv);
			global.joy_stickr_active[_i] = (gamepad_axis_value(_i, gp_axisrh) != 0 || gamepad_axis_value(_i, gp_axisrv) != 0);
			global.joy_stickr_direction[_i] = point_direction(0, 0, gamepad_axis_value(_i, gp_axisrh), gamepad_axis_value(_i, gp_axisrv));
			global.joy_stickr_padl [_i] = sign( gamepad_axis_value(_i, gp_axisrh) ) == -1;
			global.joy_stickr_padr [_i] = sign( gamepad_axis_value(_i, gp_axisrh) ) == 1;
			global.joy_stickr_padu [_i] = sign( gamepad_axis_value(_i, gp_axisrv) ) == -1;
			global.joy_stickr_padd [_i] = sign( gamepad_axis_value(_i, gp_axisrv) ) == 1;
			global.joy_stickr[_i] = gamepad_button_check(_i, gp_stickr);
			global.joy_stickr_pressed[_i] = gamepad_button_check_pressed(_i, gp_stickr);
			global.joy_stickr_released[_i] = gamepad_button_check_released(_i, gp_stickr);

			global.joy_padl[_i] = gamepad_button_check(_i, gp_padl);
			global.joy_padl_pressed[_i] = gamepad_button_check_pressed(_i, gp_padl);
			global.joy_padl_released[_i] = gamepad_button_check_released(_i, gp_padl);
			
			global.joy_padr[_i] = gamepad_button_check(_i, gp_padr);
			global.joy_padr_pressed[_i] = gamepad_button_check_pressed(_i, gp_padr);
			global.joy_padr_released[_i] = gamepad_button_check_released(_i, gp_padr);
			
			global.joy_padu[_i] = gamepad_button_check(_i, gp_padu);
			global.joy_padu_pressed[_i] = gamepad_button_check_pressed(_i, gp_padu);
			global.joy_padu_released[_i] = gamepad_button_check_released(_i, gp_padu);
			
			global.joy_padd[_i] = gamepad_button_check(_i, gp_padd);
			global.joy_padd_pressed[_i] = gamepad_button_check_pressed(_i, gp_padd);
			global.joy_padd_released[_i] = gamepad_button_check_released(_i, gp_padd);

			global.joy_face1[_i] = gamepad_button_check(_i, gp_face1);
			global.joy_face1_pressed[_i] = gamepad_button_check_pressed(_i, gp_face1);
			global.joy_face1_released[_i] = gamepad_button_check_released(_i, gp_face1);
			
			global.joy_face2[_i] = gamepad_button_check(_i, gp_face2);
			global.joy_face2_pressed[_i] = gamepad_button_check_pressed(_i, gp_face2);
			global.joy_face2_released[_i] = gamepad_button_check_released(_i, gp_face2);
			
			global.joy_face3[_i] = gamepad_button_check(_i, gp_face3);
			global.joy_face3_pressed[_i] = gamepad_button_check_pressed(_i, gp_face3);
			global.joy_face3_released[_i] = gamepad_button_check_released(_i, gp_face3);
			
			global.joy_face4[_i] = gamepad_button_check(_i, gp_face4);
			global.joy_face4_pressed[_i] = gamepad_button_check_pressed(_i, gp_face4);
			global.joy_face4_released[_i] = gamepad_button_check_released(_i, gp_face4);
			
			global.joy_shoulderl[_i] = gamepad_button_check(_i, gp_shoulderl);
			global.joy_shoulderl_pressed[_i] = gamepad_button_check_pressed(_i, gp_shoulderl);
			global.joy_shoulderl_released[_i] = gamepad_button_check_released(_i, gp_shoulderl);
			
			global.joy_shoulderlb_value[_i] = gamepad_button_value(_i, gp_shoulderlb);
			global.joy_shoulderlb[_i] = gamepad_button_check(_i, gp_shoulderlb);
			global.joy_shoulderlb_pressed[_i] = gamepad_button_check_pressed(_i, gp_shoulderlb);
			global.joy_shoulderlb_released[_i] = gamepad_button_check_released(_i, gp_shoulderlb);
			
			global.joy_shoulderr[_i] = gamepad_button_check(_i, gp_shoulderr);
			global.joy_shoulderr_pressed[_i] = gamepad_button_check_pressed(_i, gp_shoulderr);
			global.joy_shoulderr_released[_i] = gamepad_button_check_released(_i, gp_shoulderr);
			
			global.joy_shoulderrb_value[_i] = gamepad_button_value(_i, gp_shoulderrb);
			global.joy_shoulderrb[_i] = gamepad_button_check(_i, gp_shoulderrb);
			global.joy_shoulderrb_pressed[_i] = gamepad_button_check_pressed(_i, gp_shoulderrb);
			global.joy_shoulderrb_released[_i] = gamepad_button_check_released(_i, gp_shoulderrb);
			
			global.joy_select[_i] = gamepad_button_check(_i, gp_select);
			global.joy_select_pressed[_i] = gamepad_button_check_pressed(_i, gp_select);
			global.joy_select_released[_i] = gamepad_button_check_released(_i, gp_select);
			
			global.joy_start[_i] = gamepad_button_check(_i, gp_start);
			global.joy_start_pressed[_i] = gamepad_button_check_pressed(_i, gp_start);
			global.joy_start_released[_i] = gamepad_button_check_released(_i, gp_start);			
			
		}
	}
	#endregion

}

//short hands
function short_hands(){
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