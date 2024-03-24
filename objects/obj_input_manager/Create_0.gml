////all_debug_monitors
show_keyboard_debug = false;
show_mouse_debug = false;
show_gamepad_debug = false;
show_debug_console = false;
show_game_info = false;

//Gamepad global Configuration.
global.gamepad_dead_zone = 0.05;

#region KEYBOARD
	#macro KEY_ANY keyboard_check(vk_anykey)
	#macro KEY_ANY_PRESSED keyboard_check_pressed(vk_anykey)
	#macro KEY_ANY_RELEASED keyboard_check_released(vk_anykey)
	#macro KEY_NONE keyboard_check(vk_nokey)
	#macro KEY_NONE_PRESSED keyboard_check_pressed(vk_nokey)
	#macro KEY_NONE_RELEASED keyboard_check_released(vk_nokey)
	
	/********************************************************************/
	// ESCAPE f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12
	
	#macro KEY_ESCAPE  keyboard_check(vk_escape)
	#macro KEY_ESCAPE_PRESSED keyboard_check_pressed(vk_escape)
	#macro KEY_ESCAPE_RELEASED keyboard_check_released(vk_escape)
	#macro KEY_F1  keyboard_check(vk_f1)
	#macro KEY_F1_PRESSED keyboard_check_pressed(vk_f1)
	#macro KEY_F1_RELEASED keyboard_check_released(vk_f1)
	#macro KEY_F2  keyboard_check(vk_f2)
	#macro KEY_F2_PRESSED keyboard_check_pressed(vk_f2)
	#macro KEY_F2_RELEASED keyboard_check_released(vk_f2)
	#macro KEY_F3  keyboard_check(vk_f3)
	#macro KEY_F3_PRESSED keyboard_check_pressed(vk_f3)
	#macro KEY_F3_RELEASED keyboard_check_released(vk_f3)
	#macro KEY_F4  keyboard_check(vk_f4)
	#macro KEY_F4_PRESSED keyboard_check_pressed(vk_f4)
	#macro KEY_F4_RELEASED keyboard_check_released(vk_f4)
	#macro KEY_F5  keyboard_check(vk_f5)
	#macro KEY_F5_PRESSED keyboard_check_pressed(vk_f5)
	#macro KEY_F5_RELEASED keyboard_check_released(vk_f5)
	#macro KEY_F6  keyboard_check(vk_f6)
	#macro KEY_F6_PRESSED keyboard_check_pressed(vk_f6)
	#macro KEY_F6_RELEASED keyboard_check_released(vk_f6)
	#macro KEY_F7  keyboard_check(vk_f7)
	#macro KEY_F7_PRESSED keyboard_check_pressed(vk_f7)
	#macro KEY_F7_RELEASED keyboard_check_released(vk_f7)
	#macro KEY_F8  keyboard_check(vk_f8)
	#macro KEY_F8_PRESSED keyboard_check_pressed(vk_f8)
	#macro KEY_F8_RELEASED keyboard_check_released(vk_f8)
	#macro KEY_F9  keyboard_check(vk_f9)
	#macro KEY_F9_PRESSED keyboard_check_pressed(vk_f9)
	#macro KEY_F9_RELEASED keyboard_check_released(vk_f9)
	#macro KEY_F10  keyboard_check(vk_f10)
	#macro KEY_F10_PRESSED keyboard_check_pressed(vk_f10)
	#macro KEY_F10_RELEASED keyboard_check_released(vk_f10)
	#macro KEY_F11  keyboard_check(vk_f11)
	#macro KEY_F11_PRESSED keyboard_check_pressed(vk_f11)
	#macro KEY_F11_RELEASED keyboard_check_released(vk_f11)
	#macro KEY_F12  keyboard_check(vk_f12)
	#macro KEY_F12_PRESSED keyboard_check_pressed(vk_f12)
	#macro KEY_F12_RELEASED keyboard_check_released(vk_f12)
	
	/********************************************************************/
	// ` 1 2 3 4 5 6 7 8 9 0 - 
	
	#macro KEY_BACKQUOTE  keyboard_check(192)// `
	#macro KEY_BACKQUOTE_PRESSED keyboard_check_pressed(192)// `
	#macro KEY_BACKQUOTE_RELEASED keyboard_check_released(192)// `
	#macro KEY_1  keyboard_check(ord("1"))
	#macro KEY_1_PRESSED keyboard_check_pressed(ord("1"))
	#macro KEY_1_RELEASED keyboard_check_released(ord("1"))
	#macro KEY_2  keyboard_check(ord("2"))
	#macro KEY_2_PRESSED keyboard_check_pressed(ord("2"))
	#macro KEY_2_RELEASED keyboard_check_released(ord("2"))
	#macro KEY_3  keyboard_check(ord("3"))
	#macro KEY_3_PRESSED keyboard_check_pressed(ord("3"))
	#macro KEY_3_RELEASED keyboard_check_released(ord("3"))
	#macro KEY_4  keyboard_check(ord("4"))
	#macro KEY_4_PRESSED keyboard_check_pressed(ord("4"))
	#macro KEY_4_RELEASED keyboard_check_released(ord("4"))
	#macro KEY_5  keyboard_check(ord("5"))
	#macro KEY_5_PRESSED keyboard_check_pressed(ord("5"))
	#macro KEY_5_RELEASED keyboard_check_released(ord("5"))
	#macro KEY_6  keyboard_check(ord("6"))
	#macro KEY_6_PRESSED keyboard_check_pressed(ord("6"))
	#macro KEY_6_RELEASED keyboard_check_released(ord("6"))
	#macro KEY_7  keyboard_check(ord("7"))
	#macro KEY_7_PRESSED keyboard_check_pressed(ord("7"))
	#macro KEY_7_RELEASED keyboard_check_released(ord("7"))
	#macro KEY_8  keyboard_check(ord("8"))
	#macro KEY_8_PRESSED keyboard_check_pressed(ord("8"))
	#macro KEY_8_RELEASED keyboard_check_released(ord("8"))
	#macro KEY_9  keyboard_check(ord("9"))
	#macro KEY_9_PRESSED keyboard_check_pressed(ord("9"))
	#macro KEY_9_RELEASED keyboard_check_released(ord("9"))
	#macro KEY_0  keyboard_check(ord("0"))
	#macro KEY_0_PRESSED keyboard_check_pressed(ord("0"))
	#macro KEY_0_RELEASED keyboard_check_released(ord("0"))
	#macro KEY_MINUS  keyboard_check(189)// -
	#macro KEY_MINUS_PRESSED keyboard_check_pressed(189)// -
	#macro KEY_MINUS_RELEASED keyboard_check_released(189)// -
	#macro KEY_EQUALS  keyboard_check(187)// 
	#macro KEY_EQUALS_PRESSED keyboard_check_pressed(187)// 
	#macro KEY_EQUALS_RELEASED keyboard_check_released(187)// 
	#macro KEY_BACKSPACE  keyboard_check(vk_backspace)
	#macro KEY_BACKSPACE_PRESSED keyboard_check_pressed(vk_backspace)
	#macro KEY_BACKSPACE_RELEASED keyboard_check_released(vk_backspace)
	
	/********************************************************************/
	// tab q w e r t y u i o p [ ] \ 
	
	#macro KEY_TAB  keyboard_check(vk_tab)
	#macro KEY_TAB_PRESSED keyboard_check_pressed(vk_tab)
	#macro KEY_TAB_RELEASED keyboard_check_released(vk_tab)
	#macro KEY_Q  keyboard_check(ord("Q"))
	#macro KEY_Q_PRESSED keyboard_check_pressed(ord("Q"))
	#macro KEY_Q_RELEASED keyboard_check_released(ord("Q"))
	#macro KEY_W  keyboard_check(ord("W"))
	#macro KEY_W_PRESSED keyboard_check_pressed(ord("W"))
	#macro KEY_W_RELEASED keyboard_check_released(ord("W"))
	#macro KEY_E  keyboard_check(ord("E"))
	#macro KEY_E_PRESSED keyboard_check_pressed(ord("E"))
	#macro KEY_E_RELEASED keyboard_check_released(ord("E"))
	#macro KEY_R  keyboard_check(ord("R"))
	#macro KEY_R_PRESSED keyboard_check_pressed(ord("R"))
	#macro KEY_R_RELEASED keyboard_check_released(ord("R"))
	#macro KEY_T  keyboard_check(ord("T"))
	#macro KEY_T_PRESSED keyboard_check_pressed(ord("T"))
	#macro KEY_T_RELEASED keyboard_check_released(ord("T"))
	#macro KEY_Y  keyboard_check(ord("Y"))
	#macro KEY_Y_PRESSED keyboard_check_pressed(ord("Y"))
	#macro KEY_Y_RELEASED keyboard_check_released(ord("Y"))
	#macro KEY_U  keyboard_check(ord("U"))
	#macro KEY_U_PRESSED keyboard_check_pressed(ord("U"))
	#macro KEY_U_RELEASED keyboard_check_released(ord("U"))
	#macro KEY_I  keyboard_check(ord("I"))
	#macro KEY_I_PRESSED keyboard_check_pressed(ord("I"))
	#macro KEY_I_RELEASED keyboard_check_released(ord("I"))
	#macro KEY_O  keyboard_check(ord("O"))
	#macro KEY_O_PRESSED keyboard_check_pressed(ord("O"))
	#macro KEY_O_RELEASED keyboard_check_released(ord("O"))
	#macro KEY_P  keyboard_check(ord("P"))
	#macro KEY_P_PRESSED keyboard_check_pressed(ord("P"))
	#macro KEY_P_RELEASED keyboard_check_released(ord("P"))
	#macro KEY_LEFT_BRACKET  keyboard_check(219)// [
	#macro KEY_LEFT_BRACKET_PRESSED keyboard_check_pressed(219)// [
	#macro KEY_LEFT_BRACKET_RELEASED keyboard_check_released(219)// [
	#macro KEY_RIGHT_BRACKET  keyboard_check(221) // ]
	#macro KEY_RIGHT_BRACKET_PRESSED keyboard_check_pressed(221)// ]
	#macro KEY_RIGHT_BRACKET_RELEASED keyboard_check_released(221)// ]
	#macro KEY_BACKSLASH keyboard_check(220)// \
	#macro KEY_BACKSLASH_PRESSED keyboard_check_pressed(220)// \
	#macro KEY_BACKSLASH_RELEASED keyboard_check_released(220)// \
	
	/********************************************************************/
	// CAPS_LOCK a s d f g h j k l  '
	
	#macro KEY_CAPS_LOCK  keyboard_check(20)// CAPS_LOCK
	#macro KEY_CAPS_LOCK_PRESSED keyboard_check_pressed(20)// CAPS_LOCK
	#macro KEY_CAPS_LOCK_RELEASED keyboard_check_released(20)// CAPS_LOCK
	#macro KEY_A  keyboard_check(ord("A"))
	#macro KEY_A_PRESSED keyboard_check_pressed(ord("A"))
	#macro KEY_A_RELEASED keyboard_check_released(ord("A"))
	#macro KEY_S  keyboard_check(ord("S"))
	#macro KEY_S_PRESSED keyboard_check_pressed(ord("S"))
	#macro KEY_S_RELEASED keyboard_check_released(ord("S"))
	#macro KEY_D  keyboard_check(ord("D"))
	#macro KEY_D_PRESSED keyboard_check_pressed(ord("D"))
	#macro KEY_D_RELEASED keyboard_check_released(ord("D"))
	#macro KEY_F  keyboard_check(ord("F"))
	#macro KEY_F_PRESSED keyboard_check_pressed(ord("F"))
	#macro KEY_F_RELEASED keyboard_check_released(ord("F"))
	#macro KEY_G  keyboard_check(ord("G"))
	#macro KEY_G_PRESSED keyboard_check_pressed(ord("G"))
	#macro KEY_G_RELEASED keyboard_check_released(ord("G"))
	#macro KEY_H  keyboard_check(ord("H"))
	#macro KEY_H_PRESSED keyboard_check_pressed(ord("H"))
	#macro KEY_H_RELEASED keyboard_check_released(ord("H"))
	#macro KEY_J  keyboard_check(ord("J"))
	#macro KEY_J_PRESSED keyboard_check_pressed(ord("J"))
	#macro KEY_J_RELEASED keyboard_check_released(ord("J"))
	#macro KEY_K  keyboard_check(ord("K"))
	#macro KEY_K_PRESSED keyboard_check_pressed(ord("K"))
	#macro KEY_K_RELEASED keyboard_check_released(ord("K"))
	#macro KEY_L  keyboard_check(ord("L"))
	#macro KEY_L_PRESSED keyboard_check_pressed(ord("L"))
	#macro KEY_L_RELEASED keyboard_check_released(ord("L"))
	#macro KEY_SEMICOLON  keyboard_check(186)// 
	#macro KEY_SEMICOLON_PRESSED keyboard_check_pressed(186)// 
	#macro KEY_SEMICOLON_RELEASED keyboard_check_released(186)// 
	#macro KEY_QUOTE  keyboard_check(222)// '
	#macro KEY_QUOTE_PRESSED keyboard_check_pressed(222)// '
	#macro KEY_QUOTE_RELEASED keyboard_check_released(222)// '
	#macro KEY_ENTER  keyboard_check(vk_enter)
	#macro KEY_ENTER_PRESSED keyboard_check_pressed(vk_enter)
	#macro KEY_ENTER_RELEASED keyboard_check_released(vk_enter)
	
	/********************************************************************/
	// SHIFT z x c v b n m , . /
	
	#macro KEY_SHIFT_ANY  keyboard_check(vk_shift)
	#macro KEY_SHIFT_ANY_PRESSED keyboard_check_pressed(vk_shift)
	#macro KEY_SHIFT_ANY_RELEASED keyboard_check_released(vk_shift)
	#macro KEY_SHIFTL  keyboard_check(vk_lshift)
	#macro KEY_SHIFTL_PRESSED keyboard_check_pressed(vk_lshift)
	#macro KEY_SHIFTL_RELEASED keyboard_check_released(vk_lshift)
	#macro KEY_Z  keyboard_check(ord("Z"))
	#macro KEY_Z_PRESSED keyboard_check_pressed(ord("Z"))
	#macro KEY_Z_RELEASED keyboard_check_released(ord("Z"))
	#macro KEY_X  keyboard_check(ord("X"))
	#macro KEY_X_PRESSED keyboard_check_pressed(ord("X"))
	#macro KEY_X_RELEASED keyboard_check_released(ord("X"))
	#macro KEY_C  keyboard_check(ord("C"))
	#macro KEY_C_PRESSED keyboard_check_pressed(ord("C"))
	#macro KEY_C_RELEASED keyboard_check_released(ord("C"))
	#macro KEY_V  keyboard_check(ord("V"))
	#macro KEY_V_PRESSED keyboard_check_pressed(ord("V"))
	#macro KEY_V_RELEASED keyboard_check_released(ord("V"))
	#macro KEY_B  keyboard_check(ord("B"))
	#macro KEY_B_PRESSED keyboard_check_pressed(ord("B"))
	#macro KEY_B_RELEASED keyboard_check_released(ord("B"))
	#macro KEY_N  keyboard_check(ord("N"))
	#macro KEY_N_PRESSED keyboard_check_pressed(ord("N"))
	#macro KEY_N_RELEASED keyboard_check_released(ord("N"))
	#macro KEY_M  keyboard_check(ord("M"))
	#macro KEY_M_PRESSED keyboard_check_pressed(ord("M"))
	#macro KEY_M_RELEASED keyboard_check_released(ord("M"))
	#macro KEY_COMMA  keyboard_check(188)// ,
	#macro KEY_COMMA_PRESSED keyboard_check_pressed(188)// ,
	#macro KEY_COMMA_RELEASED keyboard_check_released(188)// ,
	#macro KEY_PERIOD  keyboard_check(190)// .
	#macro KEY_PERIOD_PRESSED keyboard_check_pressed(190)// .
	#macro KEY_PERIOD_RELEASED keyboard_check_released(190)// .
	#macro KEY_SLASH  keyboard_check(191)// /
	#macro KEY_SLASH_PRESSED keyboard_check_pressed(191)// /
	#macro KEY_SLASH_RELEASED keyboard_check_released(191)// /
	#macro KEY_SHIFTR  keyboard_check(vk_rshift)
	#macro KEY_SHIFTR_PRESSED keyboard_check_pressed(vk_rshift)
	#macro KEY_SHIFTR_RELEASED keyboard_check_released(vk_rshift)
		
	/********************************************************************/
	// CONTROL WINDOWS ALT SPACEBAR CONTEXT_MENU ALT_R CONTROL_R 
		
	#macro KEY_CONTROL_ANY  keyboard_check(vk_control)
	#macro KEY_CONTROL_ANY_PRESSED keyboard_check_pressed(vk_control)
	#macro KEY_CONTROL_ANY_RELEASED keyboard_check_released(vk_control)
	#macro KEY_ALT_ANY  keyboard_check(vk_alt)
	#macro KEY_ALT_ANY_PRESSED keyboard_check_pressed(vk_alt)
	#macro KEY_ALT_ANY_RELEASED keyboard_check_released(vk_alt)
	#macro KEY_CONTROLL  keyboard_check(vk_lcontrol)
	#macro KEY_CONTROLL_PRESSED keyboard_check_pressed(vk_lcontrol)
	#macro KEY_CONTROLL_RELEASED keyboard_check_released(vk_lcontrol)
	#macro KEY_WINDOWS  keyboard_check(91)// windows
	#macro KEY_WINDOWS_PRESSED keyboard_check_pressed(91)// windows
		#macro KEY_WINDOWS_RELEASED keyboard_check_released(91)// windows
	#macro KEY_ALTL  keyboard_check(vk_lalt)
	#macro KEY_ALTL_PRESSED keyboard_check_pressed(vk_lalt)
	#macro KEY_ALTL_RELEASED keyboard_check_released(vk_lalt)
	#macro KEY_SPACE  keyboard_check(vk_space)
	#macro KEY_SPACE_PRESSED keyboard_check_pressed(vk_space)
	#macro KEY_SPACE_RELEASED keyboard_check_released(vk_space)
	#macro KEY_RALT  keyboard_check(vk_ralt)
	#macro KEY_RALT_PRESSED keyboard_check_pressed(vk_ralt)
	#macro KEY_RALT_RELEASED keyboard_check_released(vk_ralt)
	// FUNCTION key is not defined.
	#macro KEY_CONTEXT_MENU  keyboard_check(93)// 
	#macro KEY_CONTEXT_MENU_PRESSED keyboard_check_pressed(93)// 
	#macro KEY_CONTEXT_MENU_RELEASED keyboard_check_released(93)// 
	#macro KEY_CONTROLR  keyboard_check(vk_rcontrol)
	#macro KEY_CONTROLR_PRESSED keyboard_check_pressed(vk_rcontrol)
	#macro KEY_CONTROLR_RELEASED keyboard_check_released(vk_rcontrol)

	/********************************************************************/
	// PRINT_SCREEN SCROLL_LOCK PAUSE_BREAK

		#macro KEY_PRINTSCREEN  keyboard_check(vk_printscreen)
		#macro KEY_PRINTSCREEN_PRESSED keyboard_check_pressed(vk_printscreen)
	#macro KEY_PRINTSCREEN_RELEASED keyboard_check_released(vk_printscreen)
	#macro KEY_SCROLL_LOCK  keyboard_check(145)// SCROLL LOCK
	#macro KEY_SCROLL_LOCK_PRESSED keyboard_check_pressed(145)// SCROLL LOCK
	#macro KEY_SCROLL_LOCK_RELEASED keyboard_check_released(145)// SCROLL LOCK
	#macro KEY_PAUSE  keyboard_check(vk_pause)
	#macro KEY_PAUSE_PRESSED keyboard_check_pressed(vk_pause)
	#macro KEY_PAUSE_RELEASED keyboard_check_released(vk_pause)
		
	/********************************************************************/
	// INSERT HOME PAGE_UP DELETE END PAGE_DOWN

	#macro KEY_INSERT  keyboard_check(vk_insert)
	#macro KEY_INSERT_PRESSED keyboard_check_pressed(vk_insert)
	#macro KEY_INSERT_RELEASED keyboard_check_released(vk_insert)	
	#macro KEY_HOME  keyboard_check(vk_home)
	#macro KEY_HOME_PRESSED keyboard_check_pressed(vk_home)
	#macro KEY_HOME_RELEASED keyboard_check_released(vk_home)
	#macro KEY_PAGEUP  keyboard_check(vk_pageup)
	#macro KEY_PAGEUP_PRESSED keyboard_check_pressed(vk_pageup)
	#macro KEY_PAGEUP_RELEASED keyboard_check_released(vk_pageup)
	#macro KEY_DELETE  keyboard_check(vk_delete)
	#macro KEY_DELETE_PRESSED keyboard_check_pressed(vk_delete)
	#macro KEY_DELETE_RELEASED keyboard_check_released(vk_delete)
	#macro KEY_END  keyboard_check(vk_end)
	#macro KEY_END_PRESSED keyboard_check_pressed(vk_end)
	#macro KEY_END_RELEASED keyboard_check_released(vk_end)
	#macro KEY_PAGEDOWN  keyboard_check(vk_pagedown)
	#macro KEY_PAGEDOWN_PRESSED keyboard_check_pressed(vk_pagedown)
	#macro KEY_PAGEDOWN_RELEASED keyboard_check_released(vk_pagedown)
		
	/********************************************************************/
	// ARROWS: LEFT RIGHT UP DOWN

	#macro KEY_LEFT  keyboard_check(vk_left)
	#macro KEY_LEFT_PRESSED keyboard_check_pressed(vk_left)
	#macro KEY_LEFT_RELEASED keyboard_check_released(vk_left)
	#macro KEY_RIGHT  keyboard_check(vk_right)
	#macro KEY_RIGHT_PRESSED keyboard_check_pressed(vk_right)
	#macro KEY_RIGHT_RELEASED keyboard_check_released(vk_right)
	#macro KEY_UP  keyboard_check(vk_up)
	#macro KEY_UP_PRESSED keyboard_check_pressed(vk_up)
	#macro KEY_UP_RELEASED keyboard_check_released(vk_up)
	#macro KEY_DOWN  keyboard_check(vk_down)
	#macro KEY_DOWN_PRESSED keyboard_check_pressed(vk_down)
	#macro KEY_DOWN_RELEASED keyboard_check_released(vk_down)

	/********************************************************************/
	// NUMLOCK / * - + 7 8 9 4 5 6 1 2 3 0 .

	#macro KEY_NUMLOCK_STATUS  keyboard_get_numlock()
	#macro KEY_NUMLOCK  keyboard_check(144)// NUMLOCK
	#macro KEY_NUMLOCK_PRESSED keyboard_check_pressed(144)// NUMLOCK
	#macro KEY_NUMLOCK_RELEASED keyboard_check_released(144)// NUMLOCK
		
	#macro KEY_DIVIDE  keyboard_check(vk_divide)
	#macro KEY_DIVIDE_PRESSED keyboard_check_pressed(vk_divide)
	#macro KEY_DIVIDE_RELEASED keyboard_check_released(vk_divide)
	#macro KEY_MULTIPLY  keyboard_check(vk_multiply)
	#macro KEY_MULTIPLY_PRESSED keyboard_check_pressed(vk_multiply)
	#macro KEY_MULTIPLY_RELEASED keyboard_check_released(vk_multiply)
	#macro KEY_SUBTRACT  keyboard_check(vk_subtract)
	#macro KEY_SUBTRACT_PRESSED keyboard_check_pressed(vk_subtract)
	#macro KEY_SUBTRACT_RELEASED keyboard_check_released(vk_subtract)
	#macro KEY_ADD  keyboard_check(vk_add)
	#macro KEY_ADD_PRESSED keyboard_check_pressed(vk_add)
	#macro KEY_ADD_RELEASED keyboard_check_released(vk_add)
	#macro KEY_NUMPAD7  keyboard_check(vk_numpad7)
	#macro KEY_NUMPAD7_PRESSED keyboard_check_pressed(vk_numpad7)
	#macro KEY_NUMPAD7_RELEASED keyboard_check_released(vk_numpad7)
	#macro KEY_NUMPAD8  keyboard_check(vk_numpad8)
	#macro KEY_NUMPAD8_PRESSED keyboard_check_pressed(vk_numpad8)
	#macro KEY_NUMPAD8_RELEASED keyboard_check_released(vk_numpad8)
	#macro KEY_NUMPAD9  keyboard_check(vk_numpad9)
	#macro KEY_NUMPAD9_PRESSED keyboard_check_pressed(vk_numpad9)
	#macro KEY_NUMPAD9_RELEASED keyboard_check_released(vk_numpad9)	
	#macro KEY_NUMPAD4  keyboard_check(vk_numpad4)
	#macro KEY_NUMPAD4_PRESSED keyboard_check_pressed(vk_numpad4)
	#macro KEY_NUMPAD4_RELEASED keyboard_check_released(vk_numpad4)
	#macro KEY_NUMPAD5  keyboard_check(vk_numpad5)
	#macro KEY_NUMPAD5_PRESSED keyboard_check_pressed(vk_numpad5)
	#macro KEY_NUMPAD5_RELEASED keyboard_check_released(vk_numpad5)
	#macro KEY_NUMPAD6  keyboard_check(vk_numpad6)
	#macro KEY_NUMPAD6_PRESSED keyboard_check_pressed(vk_numpad6)
	#macro KEY_NUMPAD6_RELEASED keyboard_check_released(vk_numpad6)
	#macro KEY_NUMPAD1  keyboard_check(vk_numpad1)
	#macro KEY_NUMPAD1_PRESSED keyboard_check_pressed(vk_numpad1)
	#macro KEY_NUMPAD1_RELEASED keyboard_check_released(vk_numpad1)
	#macro KEY_NUMPAD2  keyboard_check(vk_numpad2)
	#macro KEY_NUMPAD2_PRESSED keyboard_check_pressed(vk_numpad2)
	#macro KEY_NUMPAD2_RELEASED keyboard_check_released(vk_numpad2)
	#macro KEY_NUMPAD3  keyboard_check(vk_numpad3)
	#macro KEY_NUMPAD3_PRESSED keyboard_check_pressed(vk_numpad3)
	#macro KEY_NUMPAD3_RELEASED keyboard_check_released(vk_numpad3)
	#macro KEY_NUMPAD0  keyboard_check(vk_numpad0)
	#macro KEY_NUMPAD0_PRESSED keyboard_check_pressed(vk_numpad0)
	#macro KEY_NUMPAD0_RELEASED keyboard_check_released(vk_numpad0)
	#macro KEY_DECIMAL  keyboard_check(vk_decimal)
	#macro KEY_DECIMAL_PRESSED keyboard_check_pressed(vk_decimal)
	#macro KEY_DECIMAL_RELEASED keyboard_check_released(vk_decimal)
	
#endregion

#region MOUSE
	#macro MB_ANY mouse_check_button(mb_any)
	#macro MB_ANY_PRESSED mouse_check_button_pressed(mb_any)
	#macro MB_ANY_RELEASE mouse_check_button_released(mb_any)
	#macro MB_NONE mouse_check_button(mb_none)
	#macro MB_NONE_PRESSED mouse_check_button_pressed(mb_none)
	#macro MB_NONE_RELEASE mouse_check_button_released(mb_none)
	#macro MB_LEFT mouse_check_button(mb_left)
	#macro MB_LEFT_PRESSED mouse_check_button_pressed(mb_left)
	#macro MB_LEFT_RELEASED mouse_check_button_released(mb_left)
	#macro MB_RIGHT mouse_check_button(mb_right)
	#macro MB_RIGHT_PRESSED mouse_check_button_pressed(mb_right)
	#macro MB_RIGHT_RELEASED mouse_check_button_released(mb_right)
	#macro MB_MIDDLE mouse_check_button(mb_middle)
	#macro MB_MIDDLE_PRESSED mouse_check_button_pressed(mb_middle)
	#macro MB_MIDDLE_RELEASED mouse_check_button_released(mb_middle)
	#macro MB_SIDE1 mouse_check_button(mb_side1)
	#macro MB_SIDE1_PRESSED mouse_check_button_pressed(mb_side1)
	#macro MB_SIDE1_RELEASED mouse_check_button_released(mb_side1)
	#macro MB_SIDE2 mouse_check_button(mb_side2)
	#macro MB_SIDE2_PRESSED mouse_check_button_pressed(mb_side2)
	#macro MB_SIDE2_RELEASED mouse_check_button_released(mb_side2)
	#macro MB_WHEEL_UP mouse_wheel_up()
	#macro MB_WHEEL_DOWN mouse_wheel_down()
#endregion