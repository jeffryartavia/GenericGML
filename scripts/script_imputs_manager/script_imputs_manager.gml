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
	
	#region keyboard
	global.key_any = keyboard_check(vk_anykey);
	global.key_any_pressed = keyboard_check_pressed(vk_anykey);
	global.key_any_released = keyboard_check_released(vk_anykey);		
	global.key_none = keyboard_check(vk_nokey);
	global.key_none_pressed = keyboard_check_pressed(vk_nokey);
	global.key_none_released = keyboard_check_released(vk_nokey);
		
	/********************************************************************/
	// ESCAPE f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12
		
	global.key_escape = keyboard_check(vk_escape);
	global.key_escape_pressed = keyboard_check_pressed(vk_escape);
	global.key_escape_released = keyboard_check_released(vk_escape);
	global.key_f1 = keyboard_check(vk_f1);
	global.key_f1_pressed = keyboard_check_pressed(vk_f1);
	global.key_f1_released = keyboard_check_released(vk_f1);
	global.key_f2 = keyboard_check(vk_f2);
	global.key_f2_pressed = keyboard_check_pressed(vk_f2);
	global.key_f2_released = keyboard_check_released(vk_f2);
	global.key_f3 = keyboard_check(vk_f3);
	global.key_f3_pressed = keyboard_check_pressed(vk_f3);
	global.key_f3_released = keyboard_check_released(vk_f3);
	global.key_f4 = keyboard_check(vk_f4);
	global.key_f4_pressed = keyboard_check_pressed(vk_f4);
	global.key_f4_released = keyboard_check_released(vk_f4);
	global.key_f5 = keyboard_check(vk_f5);
	global.key_f5_pressed = keyboard_check_pressed(vk_f5);
	global.key_f5_released = keyboard_check_released(vk_f5);
	global.key_f6 = keyboard_check(vk_f6);
	global.key_f6_pressed = keyboard_check_pressed(vk_f6);
	global.key_f6_released = keyboard_check_released(vk_f6);
	global.key_f7 = keyboard_check(vk_f7);
	global.key_f7_pressed = keyboard_check_pressed(vk_f7);
	global.key_f7_released = keyboard_check_released(vk_f7);
	global.key_f8 = keyboard_check(vk_f8);
	global.key_f8_pressed = keyboard_check_pressed(vk_f8);
	global.key_f8_released = keyboard_check_released(vk_f8);
	global.key_f9 = keyboard_check(vk_f9);
	global.key_f9_pressed = keyboard_check_pressed(vk_f9);
	global.key_f9_released = keyboard_check_released(vk_f9);
	global.key_f10 = keyboard_check(vk_f10);
	global.key_f10_pressed = keyboard_check_pressed(vk_f10);
	global.key_f10_released = keyboard_check_released(vk_f10);
	global.key_f11 = keyboard_check(vk_f11);
	global.key_f11_pressed = keyboard_check_pressed(vk_f11);
	global.key_f11_released = keyboard_check_released(vk_f11);
	global.key_f12 = keyboard_check(vk_f12);
	global.key_f12_pressed = keyboard_check_pressed(vk_f12);
	global.key_f12_released = keyboard_check_released(vk_f12);
		
	/********************************************************************/
	// ` 1 2 3 4 5 6 7 8 9 0 - =
		
	global.key_backquote = keyboard_check(192);// `
	global.key_backquote_pressed = keyboard_check_pressed(192);// `
	global.key_backquote_released = keyboard_check_released(192);// `
	global.key_1 = keyboard_check(ord("1"));
	global.key_1_pressed = keyboard_check_pressed(ord("1"));
	global.key_1_released = keyboard_check_released(ord("1"));
	global.key_2 = keyboard_check(ord("2"));
	global.key_2_pressed = keyboard_check_pressed(ord("2"));
	global.key_2_released = keyboard_check_released(ord("2"));
	global.key_3 = keyboard_check(ord("3"));
	global.key_3_pressed = keyboard_check_pressed(ord("3"));
	global.key_3_released = keyboard_check_released(ord("3"));
	global.key_4 = keyboard_check(ord("4"));
	global.key_4_pressed = keyboard_check_pressed(ord("4"));
	global.key_4_released = keyboard_check_released(ord("4"));
	global.key_5 = keyboard_check(ord("5"));
	global.key_5_pressed = keyboard_check_pressed(ord("5"));
	global.key_5_released = keyboard_check_released(ord("5"));
	global.key_6 = keyboard_check(ord("6"));
	global.key_6_pressed = keyboard_check_pressed(ord("6"));
	global.key_6_released = keyboard_check_released(ord("6"));
	global.key_7 = keyboard_check(ord("7"));
	global.key_7_pressed = keyboard_check_pressed(ord("7"));
	global.key_7_released = keyboard_check_released(ord("7"));
	global.key_8 = keyboard_check(ord("8"));
	global.key_8_pressed = keyboard_check_pressed(ord("8"));
	global.key_8_released = keyboard_check_released(ord("8"));
	global.key_9 = keyboard_check(ord("9"));
	global.key_9_pressed = keyboard_check_pressed(ord("9"));
	global.key_9_released = keyboard_check_released(ord("9"));
	global.key_0 = keyboard_check(ord("0"));
	global.key_0_pressed = keyboard_check_pressed(ord("0"));
	global.key_0_released = keyboard_check_released(ord("0"));
	global.key_minus = keyboard_check(189);// -
	global.key_minus_pressed = keyboard_check_pressed(189);// -
	global.key_minus_released = keyboard_check_released(189);// -
	global.key_equals = keyboard_check(187);// =
	global.key_equals_pressed = keyboard_check_pressed(187);// =
	global.key_equals_released = keyboard_check_released(187);// =
	global.key_backspace = keyboard_check(vk_backspace);
	global.key_backspace_pressed = keyboard_check_pressed(vk_backspace);
	global.key_backspace_released = keyboard_check_released(vk_backspace);
		
	/********************************************************************/
	// tab q w e r t y u i o p [ ] \ 
		
	global.key_tab = keyboard_check(vk_tab);
	global.key_tab_pressed = keyboard_check_pressed(vk_tab);
	global.key_tab_released = keyboard_check_released(vk_tab);
	global.key_q = keyboard_check(ord("Q"));
	global.key_q_pressed = keyboard_check_pressed(ord("Q"));
	global.key_q_released = keyboard_check_released(ord("Q"));
	global.key_w = keyboard_check(ord("W"));
	global.key_w_pressed = keyboard_check_pressed(ord("W"));
	global.key_w_released = keyboard_check_released(ord("W"));
	global.key_e = keyboard_check(ord("E"));
	global.key_e_pressed = keyboard_check_pressed(ord("E"));
	global.key_e_released = keyboard_check_released(ord("E"));
	global.key_r = keyboard_check(ord("R"));
	global.key_r_pressed = keyboard_check_pressed(ord("R"));
	global.key_r_released = keyboard_check_released(ord("R"));
	global.key_t = keyboard_check(ord("T"));
	global.key_t_pressed = keyboard_check_pressed(ord("T"));
	global.key_t_released = keyboard_check_released(ord("T"));
	global.key_y = keyboard_check(ord("Y"));
	global.key_y_pressed = keyboard_check_pressed(ord("Y"));
	global.key_y_released = keyboard_check_released(ord("Y"));
	global.key_u = keyboard_check(ord("U"));
	global.key_u_pressed = keyboard_check_pressed(ord("U"));
	global.key_u_released = keyboard_check_released(ord("U"));
	global.key_i = keyboard_check(ord("I"));
	global.key_i_pressed = keyboard_check_pressed(ord("I"));
	global.key_i_released = keyboard_check_released(ord("I"));
	global.key_o = keyboard_check(ord("O"));
	global.key_o_pressed = keyboard_check_pressed(ord("O"));
	global.key_o_released = keyboard_check_released(ord("O"));
	global.key_p = keyboard_check(ord("P"));
	global.key_p_pressed = keyboard_check_pressed(ord("P"));
	global.key_p_released = keyboard_check_released(ord("P"));
	global.key_left_bracket = keyboard_check(219);// [
	global.key_left_bracket_pressed = keyboard_check_pressed(219);// [
	global.key_left_bracket_released = keyboard_check_released(219);// [
	global.key_right_bracket = keyboard_check(221); // ]
	global.key_right_bracket_pressed = keyboard_check_pressed(221);// ]
	global.key_right_bracket_released = keyboard_check_released(221);// ]
	global.key_backslash = keyboard_check(220);// \
	global.key_backslash_pressed = keyboard_check_pressed(220);// \
	global.key_backslash_released = keyboard_check_released(220);// \
		
	/********************************************************************/
	// CAPS_LOCK a s d f g h j k l ; '
		
	global.key_caps_lock = keyboard_check(20);// CAPS_LOCK
	global.key_caps_lock_pressed = keyboard_check_pressed(20);// CAPS_LOCK
	global.key_caps_lock_released = keyboard_check_released(20);// CAPS_LOCK
	global.key_a = keyboard_check(ord("A"));
	global.key_a_pressed = keyboard_check_pressed(ord("A"));
	global.key_a_released = keyboard_check_released(ord("A"));
	global.key_s = keyboard_check(ord("S"));
	global.key_s_pressed = keyboard_check_pressed(ord("S"));
	global.key_s_released = keyboard_check_released(ord("S"));
	global.key_d = keyboard_check(ord("D"));
	global.key_d_pressed = keyboard_check_pressed(ord("D"));
	global.key_d_released = keyboard_check_released(ord("D"));
	global.key_f = keyboard_check(ord("F"));
	global.key_f_pressed = keyboard_check_pressed(ord("F"));
	global.key_f_released = keyboard_check_released(ord("F"));
	global.key_g = keyboard_check(ord("G"));
	global.key_g_pressed = keyboard_check_pressed(ord("G"));
	global.key_g_released = keyboard_check_released(ord("G"));
	global.key_h = keyboard_check(ord("H"));
	global.key_h_pressed = keyboard_check_pressed(ord("H"));
	global.key_h_released = keyboard_check_released(ord("H"));
	global.key_j = keyboard_check(ord("J"));
	global.key_j_pressed = keyboard_check_pressed(ord("J"));
	global.key_j_released = keyboard_check_released(ord("J"));
	global.key_k = keyboard_check(ord("K"));
	global.key_k_pressed = keyboard_check_pressed(ord("K"));
	global.key_k_released = keyboard_check_released(ord("K"));
	global.key_l = keyboard_check(ord("L"));
	global.key_l_pressed = keyboard_check_pressed(ord("L"));
	global.key_l_released = keyboard_check_released(ord("L"));
	global.key_semicolon = keyboard_check(186);// ;
	global.key_semicolon_pressed = keyboard_check_pressed(186);// ;
	global.key_semicolon_released = keyboard_check_released(186);// ;
	global.key_quote = keyboard_check(222);// '
	global.key_quote_pressed = keyboard_check_pressed(222);// '
	global.key_quote_released = keyboard_check_released(222);// '
	global.key_enter = keyboard_check(vk_enter);
	global.key_enter_pressed = keyboard_check_pressed(vk_enter);
	global.key_enter_released = keyboard_check_released(vk_enter);

	/********************************************************************/
	// SHIFT z x c v b n m , . /

	global.key_shift_any = keyboard_check(vk_shift);
	global.key_shift_any_pressed = keyboard_check_pressed(vk_shift);
	global.key_shift_any_released = keyboard_check_released(vk_shift);
		
	global.key_shiftl = keyboard_check(vk_lshift);
	global.key_shiftl_pressed = keyboard_check_pressed(vk_lshift);
	global.key_shiftl_released = keyboard_check_released(vk_lshift);
	global.key_z = keyboard_check(ord("Z"));
	global.key_z_pressed = keyboard_check_pressed(ord("Z"));
	global.key_z_released = keyboard_check_released(ord("Z"));
	global.key_x = keyboard_check(ord("X"));
	global.key_x_pressed = keyboard_check_pressed(ord("X"));
	global.key_x_released = keyboard_check_released(ord("X"));
	global.key_c = keyboard_check(ord("C"));
	global.key_c_pressed = keyboard_check_pressed(ord("C"));
	global.key_c_released = keyboard_check_released(ord("C"));
	global.key_v = keyboard_check(ord("V"));
	global.key_v_pressed = keyboard_check_pressed(ord("V"));
	global.key_v_released = keyboard_check_released(ord("V"));
	global.key_b = keyboard_check(ord("B"));
	global.key_b_pressed = keyboard_check_pressed(ord("B"));
	global.key_b_released = keyboard_check_released(ord("B"));
	global.key_n = keyboard_check(ord("N"));
	global.key_n_pressed = keyboard_check_pressed(ord("N"));
	global.key_n_released = keyboard_check_released(ord("N"));
	global.key_m = keyboard_check(ord("M"));
	global.key_m_pressed = keyboard_check_pressed(ord("M"));
	global.key_m_released = keyboard_check_released(ord("M"));
	global.key_comma = keyboard_check(188);// ,
	global.key_comma_pressed = keyboard_check_pressed(188);// ,
	global.key_comma_released = keyboard_check_released(188);// ,
	global.key_period = keyboard_check(190);// .
	global.key_period_pressed = keyboard_check_pressed(190);// .
	global.key_period_released = keyboard_check_released(190);// .
	global.key_slash = keyboard_check(191);// /
	global.key_slash_pressed = keyboard_check_pressed(191);// /
	global.key_slash_released = keyboard_check_released(191);// /
	global.key_shiftr = keyboard_check(vk_rshift);
	global.key_shiftr_pressed = keyboard_check_pressed(vk_rshift);
	global.key_shiftr_released = keyboard_check_released(vk_rshift);
		
	/********************************************************************/
	// CONTROL WINDOWS ALT SPACEBAR CONTEXT_MENU ALT_R CONTROL_R 
		
	global.key_control_any = keyboard_check(vk_control);
	global.key_control_any_pressed = keyboard_check_pressed(vk_control);
	global.key_control_any_released = keyboard_check_released(vk_control);
	global.key_alt_any = keyboard_check(vk_alt);
	global.key_alt_any_pressed = keyboard_check_pressed(vk_alt);
	global.key_alt_any_released = keyboard_check_released(vk_alt);
	global.key_controll = keyboard_check(vk_lcontrol);
	global.key_controll_pressed = keyboard_check_pressed(vk_lcontrol);
	global.key_controll_released = keyboard_check_released(vk_lcontrol);
	global.key_windows = keyboard_check(91);// windows
	global.key_windows_pressed = keyboard_check_pressed(91);// windows
		global.key_windows_released = keyboard_check_released(91);// windows
	global.key_altl = keyboard_check(vk_lalt);
	global.key_altl_pressed = keyboard_check_pressed(vk_lalt);
	global.key_altl_released = keyboard_check_released(vk_lalt);
	global.key_space = keyboard_check(vk_space);
	global.key_space_pressed = keyboard_check_pressed(vk_space);
	global.key_space_released = keyboard_check_released(vk_space);
	global.key_ralt = keyboard_check(vk_ralt);
	global.key_ralt_pressed = keyboard_check_pressed(vk_ralt);
	global.key_ralt_released = keyboard_check_released(vk_ralt);
	// FUNCTION key is not defined.
	global.key_context_menu = keyboard_check(93);// 
	global.key_context_menu_pressed = keyboard_check_pressed(93);// 
	global.key_context_menu_released = keyboard_check_released(93);// 
	global.key_controlr = keyboard_check(vk_rcontrol);
	global.key_controlr_pressed = keyboard_check_pressed(vk_rcontrol);
	global.key_controlr_released = keyboard_check_released(vk_rcontrol);

	/********************************************************************/
	// PRINT_SCREEN SCROLL_LOCK PAUSE_BREAK

		global.key_printscreen = keyboard_check(vk_printscreen);
		global.key_printscreen_pressed = keyboard_check_pressed(vk_printscreen);
	global.key_printscreen_released = keyboard_check_released(vk_printscreen);
	global.key_scroll_lock = keyboard_check(145);// SCROLL LOCK
	global.key_scroll_lock_pressed = keyboard_check_pressed(145);// SCROLL LOCK
	global.key_scroll_lock_released = keyboard_check_released(145);// SCROLL LOCK
	global.key_pause = keyboard_check(vk_pause);
	global.key_pause_pressed = keyboard_check_pressed(vk_pause);
	global.key_pause_released = keyboard_check_released(vk_pause);
		
	/********************************************************************/
	// INSERT HOME PAGE_UP DELETE END PAGE_DOWN

	global.key_insert = keyboard_check(vk_insert);
	global.key_insert_pressed = keyboard_check_pressed(vk_insert);
	global.key_insert_released = keyboard_check_released(vk_insert);	
	global.key_home = keyboard_check(vk_home);
	global.key_home_pressed = keyboard_check_pressed(vk_home);
	global.key_home_released = keyboard_check_released(vk_home);
	global.key_pageup = keyboard_check(vk_pageup);
	global.key_pageup_pressed = keyboard_check_pressed(vk_pageup);
	global.key_pageup_released = keyboard_check_released(vk_pageup);
	global.key_delete = keyboard_check(vk_delete);
	global.key_delete_pressed = keyboard_check_pressed(vk_delete);
	global.key_delete_released = keyboard_check_released(vk_delete);
	global.key_end = keyboard_check(vk_end);
	global.key_end_pressed = keyboard_check_pressed(vk_end);
	global.key_end_released = keyboard_check_released(vk_end);
	global.key_pagedown = keyboard_check(vk_pagedown);
	global.key_pagedown_pressed = keyboard_check_pressed(vk_pagedown);
	global.key_pagedown_released = keyboard_check_released(vk_pagedown);
		
	/********************************************************************/
	// ARROWS: LEFT RIGHT UP DOWN

	global.key_left = keyboard_check(vk_left);
	global.key_left_pressed = keyboard_check_pressed(vk_left);
	global.key_left_released = keyboard_check_released(vk_left);
	global.key_right = keyboard_check(vk_right);
	global.key_right_pressed = keyboard_check_pressed(vk_right);
	global.key_right_released = keyboard_check_released(vk_right);
	global.key_up = keyboard_check(vk_up);
	global.key_up_pressed = keyboard_check_pressed(vk_up);
	global.key_up_released = keyboard_check_released(vk_up);
	global.key_down = keyboard_check(vk_down);
	global.key_down_pressed = keyboard_check_pressed(vk_down);
	global.key_down_released = keyboard_check_released(vk_down);

	/********************************************************************/
	// NUMLOCK / * - + 7 8 9 4 5 6 1 2 3 0 .

	global.key_numlock_status = keyboard_get_numlock();
	global.key_numlock = keyboard_check(144);// NUMLOCK
	global.key_numlock_pressed = keyboard_check_pressed(144);// NUMLOCK
	global.key_numlock_released = keyboard_check_released(144);// NUMLOCK
		
	global.key_divide = keyboard_check(vk_divide);
	global.key_divide_pressed = keyboard_check_pressed(vk_divide);
	global.key_divide_released = keyboard_check_released(vk_divide);
	global.key_multiply = keyboard_check(vk_multiply);
	global.key_multiply_pressed = keyboard_check_pressed(vk_multiply);
	global.key_multiply_released = keyboard_check_released(vk_multiply);
	global.key_subtract = keyboard_check(vk_subtract);
	global.key_subtract_pressed = keyboard_check_pressed(vk_subtract);
	global.key_subtract_released = keyboard_check_released(vk_subtract);
	global.key_add = keyboard_check(vk_add);
	global.key_add_pressed = keyboard_check_pressed(vk_add);
	global.key_add_released = keyboard_check_released(vk_add);
	global.key_numpad7 = keyboard_check(vk_numpad7);
	global.key_numpad7_pressed = keyboard_check_pressed(vk_numpad7);
	global.key_numpad7_released = keyboard_check_released(vk_numpad7);
	global.key_numpad8 = keyboard_check(vk_numpad8);
	global.key_numpad8_pressed = keyboard_check_pressed(vk_numpad8);
	global.key_numpad8_released = keyboard_check_released(vk_numpad8);
	global.key_numpad9 = keyboard_check(vk_numpad9);
	global.key_numpad9_pressed = keyboard_check_pressed(vk_numpad9);
	global.key_numpad9_released = keyboard_check_released(vk_numpad9);	
	global.key_numpad4 = keyboard_check(vk_numpad4);
	global.key_numpad4_pressed = keyboard_check_pressed(vk_numpad4);
	global.key_numpad4_released = keyboard_check_released(vk_numpad4);
	global.key_numpad5 = keyboard_check(vk_numpad5);
	global.key_numpad5_pressed = keyboard_check_pressed(vk_numpad5);
	global.key_numpad5_released = keyboard_check_released(vk_numpad5);
	global.key_numpad6 = keyboard_check(vk_numpad6);
	global.key_numpad6_pressed = keyboard_check_pressed(vk_numpad6);
	global.key_numpad6_released = keyboard_check_released(vk_numpad6);
	global.key_numpad1 = keyboard_check(vk_numpad1);
	global.key_numpad1_pressed = keyboard_check_pressed(vk_numpad1);
	global.key_numpad1_released = keyboard_check_released(vk_numpad1);
	global.key_numpad2 = keyboard_check(vk_numpad2);
	global.key_numpad2_pressed = keyboard_check_pressed(vk_numpad2);
	global.key_numpad2_released = keyboard_check_released(vk_numpad2);
	global.key_numpad3 = keyboard_check(vk_numpad3);
	global.key_numpad3_pressed = keyboard_check_pressed(vk_numpad3);
	global.key_numpad3_released = keyboard_check_released(vk_numpad3);
	global.key_numpad0 = keyboard_check(vk_numpad0);
	global.key_numpad0_pressed = keyboard_check_pressed(vk_numpad0);
	global.key_numpad0_released = keyboard_check_released(vk_numpad0);
	global.key_decimal = keyboard_check(vk_decimal);
	global.key_decimal_pressed = keyboard_check_pressed(vk_decimal);
	global.key_decimal_released = keyboard_check_released(vk_decimal);
	#endregion
	
	#region mouse
	global.m_any = mouse_check_button(mb_any);
	global.m_any_pressed = mouse_check_button_pressed(mb_any);
	global.m_any_release = mouse_check_button_released(mb_any);
	global.m_none = mouse_check_button(mb_none);
	global.m_none_pressed = mouse_check_button_pressed(mb_none);
	global.m_none_release = mouse_check_button_released(mb_none);
	global.m_left = mouse_check_button(mb_left);
	global.m_left_pressed = mouse_check_button_pressed(mb_left);
	global.m_left_release = mouse_check_button_released(mb_left);
	global.m_right = mouse_check_button(mb_right);
	global.m_right_pressed = mouse_check_button_pressed(mb_right);
	global.m_right_release = mouse_check_button_released(mb_right);
	global.m_middle = mouse_check_button(mb_middle);
	global.m_middle_pressed = mouse_check_button_pressed(mb_middle);
	global.m_middle_release = mouse_check_button_released(mb_middle);
	global.m_side1 = mouse_check_button(mb_side1);
	global.m_side1_pressed = mouse_check_button_pressed(mb_side1);
	global.m_side1_release = mouse_check_button_released(mb_side1);
	global.m_side2 = mouse_check_button(mb_side2);
	global.m_side2_pressed = mouse_check_button_pressed(mb_side2);
	global.m_side2_release = mouse_check_button_released(mb_side2);
	global.m_wheel_up = mouse_wheel_up();
	global.m_wheel_down = mouse_wheel_down()
	
	#endregion
}

//short hands
function short_hands(){
	if (global.key_escape_pressed){
		hide_all_debug_monitors();
	}
	
	if (global.key_control_any && global.key_shift_any && global.key_f1_pressed){
		hide_all_debug_monitors();
		show_keyboard_debug = !show_keyboard_debug;
	}
	
	if (global.key_control_any && global.key_shift_any && global.key_f2_pressed){
		hide_all_debug_monitors();
		show_mouse_debug = !show_mouse_debug;
	}
	
	if (global.key_control_any && global.key_shift_any && global.key_f3_pressed){
		hide_all_debug_monitors();
		show_gamepad_debug = !show_gamepad_debug;
	}
	
	if (global.key_control_any && global.key_shift_any && global.key_f12_pressed){
		hide_all_debug_monitors();
		show_debug_console = !show_debug_console;
	}
	
	show_debug_log(show_debug_console);	
}

function hide_all_debug_monitors(){
	show_keyboard_debug = false;
	show_mouse_debug = false;
	show_gamepad_debug = false;
	show_debug_console = false;
}