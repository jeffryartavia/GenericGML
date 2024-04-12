if (show_keyboard_debug || show_mouse_debug || show_gamepad_debug) {
    draw_set_alpha(.6);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width, room_height,false);
	draw_set_alpha(1);
}

draw_set_font(fnt_inputs);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _row_height = 9;
var _row_i = 0;
var _col_width = 120;
var _col_i = 0;

draw_set_color(global.debug_text_color);

if (show_gamepad_debug) {
			
	var _gp_num = gamepad_get_device_count(); //siempre es 12
	
	for (var _i = 0; _i < _gp_num; _i++;){
	
		if gamepad_is_connected(_i) {
		
			gamepad_set_axis_deadzone(_i, global.gamepad_dead_zone);
			gamepad_set_button_threshold(_i, global.gamepad_button_threshold);
					
					
					
					
					
			draw_text(_i*_col_width, _row_i++*_row_height, $"GAMEPAD: {_i} ({gamepad_get_description(_i)})");	

			draw_text(_i*_col_width, _row_i++*_row_height, $"sticklh_value: {JOY_STICKLH_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"sticklv_value: {JOY_STICKLV_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_moving: {JOY_STICKL_MOVING[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_direction: {JOY_STICKL_DIRECTION[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padl: {JOY_STICKL_PADL[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padl_P: {global.joy_stickl_padl_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padl_R: {global.joy_stickl_padl_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padr: {JOY_STICKL_PADR[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padr_P: {global.joy_stickl_padr_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padr_R: {global.joy_stickl_padr_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padu: {JOY_STICKL_PADU[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padu_P: {global.joy_stickl_padu_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padu_R: {global.joy_stickl_padu_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padd: {JOY_STICKL_PADD[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padd_P: {global.joy_stickl_padd_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padd_R: {global.joy_stickl_padd_released[_i]}");


			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl: {JOY_STICKL[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_P: {JOY_STICKL_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_R: {JOY_STICKL_RELEASED[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"stickrh_value: {JOY_STICKRH_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickrv_value: {JOY_STICKRV_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_moving: {JOY_STICKR_MOVING[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_direction: {JOY_STICKR_DIRECTION[_i]}");
			
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padl: {JOY_STICKR_PADL[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padl_P: {global.joy_stickr_padl_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padl_R: {global.joy_stickr_padl_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padr: {JOY_STICKR_PADR[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padr_P: {global.joy_stickr_padr_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padr_R: {global.joy_stickr_padr_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padu: {JOY_STICKR_PADU[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padu_P: {global.joy_stickr_padu_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padu_R: {global.joy_stickr_padu_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padd: {JOY_STICKR_PADD[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padd_P: {global.joy_stickr_padd_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padd_R: {global.joy_stickr_padd_released[_i]}");
			
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr: {JOY_STICKR[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_P: {JOY_STICKR_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_R: {JOY_STICKR_RELEASED[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"padl: {JOY_PADL[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padl_P: {JOY_PADL_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padl_R: {JOY_PADL_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr: {JOY_PADR[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr_P: {JOY_PADR_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr_R: {JOY_PADR_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu: {JOY_PADU[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu_P: {JOY_PADU_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu_R: {JOY_PADU_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd: {JOY_PADD[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd_P: {JOY_PADD_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd_R: {JOY_PADD_RELEASED[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"face1: {JOY_FACE1[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face1_P: {JOY_FACE1_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face1_R: {JOY_FACE1_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2: {JOY_FACE2[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2_P: {JOY_FACE2_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2_R: {JOY_FACE2_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3: {JOY_FACE3[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3_P: {JOY_FACE3_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3_R: {JOY_FACE3_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4: {JOY_FACE4[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4_P: {JOY_FACE4_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4_R: {JOY_FACE4_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl: {JOY_SHOULDERL[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl_P: {JOY_SHOULDERL_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl_R: {JOY_SHOULDERL_RELEASED[_i]}");
					
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_value: {JOY_SHOULDERLB_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb: {JOY_SHOULDERLB[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_P: {JOY_SHOULDERLB_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_R: {JOY_SHOULDERLB_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr: {JOY_SHOULDERR[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr_P: {JOY_SHOULDERR_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr_R: {JOY_SHOULDERR_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_value: {JOY_SHOULDERRB_VALUE[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb: {JOY_SHOULDERRB[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_P: {JOY_SHOULDERRB_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_R: {JOY_SHOULDERRB_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"select: {JOY_SELECT[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"select_P: {JOY_SELECT_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"select_R: {JOY_SELECT_RELEASED[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"start: {JOY_START[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"start_P: {JOY_START_PRESSED[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"start_R: {JOY_START_RELEASED[_i]}");
			
			_i++; _row_i=0;
					
		}
	}

}


if (show_keyboard_debug) {
		
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"KEYBOARD");
		
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any: {KEY_ANY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_P: {KEY_ANY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_R: {KEY_ANY_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none: {KEY_NONE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_P: {KEY_NONE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_R: {KEY_NONE_RELEASED}");
		
	/********************************************************************/_col_i++; _row_i=0;
	// ESCAPE f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape: {KEY_ESCAPE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape_P: {KEY_ESCAPE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape_R: {KEY_ESCAPE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1: {KEY_F1}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1_P: {KEY_F1_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1_R: {KEY_F1_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2: {KEY_F2}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2_P: {KEY_F2_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2_R: {KEY_F2_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3: {KEY_F3}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3_P: {KEY_F3_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3_R: {KEY_F3_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4: {KEY_F4}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4_P: {KEY_F4_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4_R: {KEY_F4_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5: {KEY_F5}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5_P: {KEY_F5_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5_R: {KEY_F5_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6: {KEY_F6}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6_P: {KEY_F6_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6_R: {KEY_F6_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7: {KEY_F7}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7_P: {KEY_F7_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7_R: {KEY_F7_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8: {KEY_F8}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8_P: {KEY_F8_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8_R: {KEY_F8_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9: {KEY_F9}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9_P: {KEY_F9_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9_R: {KEY_F9_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10: {KEY_F10}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10_P: {KEY_F10_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10_R: {KEY_F10_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11: {KEY_F11}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11_P: {KEY_F11_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11_R: {KEY_F11_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12: {KEY_F12}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12_P: {KEY_F12_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12_R: {KEY_F12_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// ` 1 2 3 4 5 6 7 8 9 0 - =

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote: {KEY_BACKQUOTE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote_P: {KEY_BACKQUOTE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote_R: {KEY_BACKQUOTE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"1: {KEY_1}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"1_P: {KEY_1_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"1_R: {KEY_1_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"2: {KEY_2}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"2_P: {KEY_2_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"2_R: {KEY_2_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"3: {KEY_3}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"3_P: {KEY_3_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"3_R: {KEY_3_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"4: {KEY_4}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"4_P: {KEY_4_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"4_R: {KEY_4_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"5: {KEY_5}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"5_P: {KEY_5_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"5_R: {KEY_5_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"6: {KEY_6}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"6_P: {KEY_6_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"6_R: {KEY_6_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"7: {KEY_7}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"7_P: {KEY_7_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"7_R: {KEY_7_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"8: {KEY_8}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"8_P: {KEY_8_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"8_R: {KEY_8_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"9: {KEY_9}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"9_P: {KEY_9_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"9_R: {KEY_9_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"0: {KEY_0}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"0_P: {KEY_0_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"0_R: {KEY_0_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"dash: {KEY_DASH}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"dash_P: {KEY_DASH_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"dash_R: {KEY_DASH_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals: {KEY_EQUALS}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals_P: {KEY_EQUALS_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals_R: {KEY_EQUALS_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace: {KEY_BACKSPACE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace_P: {KEY_BACKSPACE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace_R: {KEY_BACKSPACE_RELEASED}");
	
	/********************************************************************/_col_i++; _row_i=0;
	// tab q w e r t y u i o p [ ] \ 

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab: {KEY_TAB}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab_P: {KEY_TAB_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab_R: {KEY_TAB_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"q: {KEY_Q}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"q_P: {KEY_Q_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"q_R: {KEY_Q_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"w: {KEY_W}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"w_P: {KEY_W_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"w_R: {KEY_W_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"e: {KEY_E}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"e_P: {KEY_E_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"e_R: {KEY_E_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"r: {KEY_R}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"r_P: {KEY_R_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"r_R: {KEY_R_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"t: {KEY_T}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"t_P: {KEY_T_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"t_R: {KEY_T_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"y: {KEY_Y}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"y_P: {KEY_Y_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"y_R: {KEY_Y_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"u: {KEY_U}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"u_P: {KEY_U_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"u_R: {KEY_U_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"i: {KEY_I}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"i_P: {KEY_I_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"i_R: {KEY_I_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"o: {KEY_O}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"o_P: {KEY_O_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"o_R: {KEY_O_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"p: {KEY_P}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"p_P: {KEY_P_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"p_R: {KEY_P_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket: {KEY_LEFT_BRACKET}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket_P: {KEY_LEFT_BRACKET_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket_R: {KEY_LEFT_BRACKET_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket: {KEY_RIGHT_BRACKET}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket_P: {KEY_RIGHT_BRACKET_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket_R: {KEY_RIGHT_BRACKET_RELEASED}");
	//draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash: {KEY_BACKSLASH}");
	//draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash_P: {KEY_BACKSLASH_PRESSED}");
	//draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash_R: {KEY_BACKSLASH_RELEASED}");
	
	

	/********************************************************************/_col_i++; _row_i=0;
	// CAPS_LOCK a s d f g h j k l ; '

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock: {KEY_CAPS_LOCK}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock_P: {KEY_CAPS_LOCK_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock_R: {KEY_CAPS_LOCK_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"a: {KEY_A}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"a_P: {KEY_A_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"a_R: {KEY_A_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"s: {KEY_S}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"s_P: {KEY_S_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"s_R: {KEY_S_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"d: {KEY_D}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"d_P: {KEY_D_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"d_R: {KEY_D_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f: {KEY_F}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f_P: {KEY_F_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"f_R: {KEY_F_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"g: {KEY_G}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"g_P: {KEY_G_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"g_R: {KEY_G_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"h: {KEY_H}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"h_P: {KEY_H_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"h_R: {KEY_H_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"j: {KEY_J}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"j_P: {KEY_J_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"j_R: {KEY_J_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"k: {KEY_K}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"k_P: {KEY_K_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"k_R: {KEY_K_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"l: {KEY_L}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"l_P: {KEY_L_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"l_R: {KEY_L_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon: {KEY_SEMICOLON}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon_P: {KEY_SEMICOLON_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon_R: {KEY_SEMICOLON_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote: {KEY_QUOTE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote_P: {KEY_QUOTE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote_R: {KEY_QUOTE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter: {KEY_ENTER}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter_P: {KEY_ENTER_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter_R: {KEY_ENTER_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// SHIFT z x c v b n m , . /

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any: {KEY_SHIFT_ANY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any_P: {KEY_SHIFT_ANY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any_R: {KEY_SHIFT_ANY_RELEASED}");

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift: {KEY_SHIFTL}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift_P: {KEY_SHIFTL_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift_R: {KEY_SHIFTL_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"z: {KEY_Z}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"z_P: {KEY_Z_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"z_R: {KEY_Z_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"x: {KEY_X}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"x_P: {KEY_X_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"x_R: {KEY_X_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"c: {KEY_C}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"c_P: {KEY_C_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"c_R: {KEY_C_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"v: {KEY_V}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"v_P: {KEY_V_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"v_R: {KEY_V_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"b: {KEY_B}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"b_P: {KEY_B_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"b_R: {KEY_B_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"n: {KEY_N}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"n_P: {KEY_N_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"n_R: {KEY_N_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"m: {KEY_M}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"m_P: {KEY_M_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"m_R: {KEY_M_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma: {KEY_COMMA}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma_P: {KEY_COMMA_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma_R: {KEY_COMMA_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"period: {KEY_PERIOD}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"period_P: {KEY_PERIOD_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"period_R: {KEY_PERIOD_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash: {KEY_SLASH}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash_P: {KEY_SLASH_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash_R: {KEY_SLASH_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift: {KEY_SHIFTR}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift_P: {KEY_SHIFTR_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift_R: {KEY_SHIFTR_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// CONTROL WINDOWS ALT SPACEBAR CONTEXT_MENU ALT_R CONTROL_R

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any: {KEY_CONTROL_ANY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any_P: {KEY_CONTROL_ANY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any_R: {KEY_CONTROL_ANY_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any: {KEY_ALT_ANY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any_P: {KEY_ALT_ANY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any_R: {KEY_ALT_ANY_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol: {KEY_CONTROLL}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol_P: {KEY_CONTROLL_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol_R: {KEY_CONTROLL_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows: {KEY_WINDOWS}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows_P: {KEY_WINDOWS_PRESSED}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows_R: {KEY_WINDOWS_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt: {KEY_ALTL}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt_P: {KEY_ALTL_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt_R: {KEY_ALTL_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"space: {KEY_SPACE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"space_P: {KEY_SPACE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"space_R: {KEY_SPACE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt: {KEY_RALT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt_P: {KEY_RALT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt_R: {KEY_RALT_RELEASED}");
	// FUNCTION key is not defined.
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu: {KEY_CONTEXT_MENU}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu_P: {KEY_CONTEXT_MENU_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu_R: {KEY_CONTEXT_MENU_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol: {KEY_CONTROLR}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol_P: {KEY_CONTROLR_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol_R: {KEY_CONTROLR_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// PRINT_SCREEN SCROLL_LOCK PAUSE_BREAK

		draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen: {KEY_PRINTSCREEN}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen_P: {KEY_PRINTSCREEN_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen_R: {KEY_PRINTSCREEN_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock: {KEY_SCROLL_LOCK}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock_P: {KEY_SCROLL_LOCK_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock_R: {KEY_SCROLL_LOCK_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause: {KEY_PAUSE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause_P: {KEY_PAUSE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause_R: {KEY_PAUSE_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// INSERT HOME PAGE_UP DELETE END PAGE_DOWN

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert: {KEY_INSERT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert_P: {KEY_INSERT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert_R: {KEY_INSERT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"home: {KEY_HOME}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"home_P: {KEY_HOME_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"home_R: {KEY_HOME_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup: {KEY_PAGEUP}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup_P: {KEY_PAGEUP_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup_R: {KEY_PAGEUP_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete: {KEY_DELETE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete_P: {KEY_DELETE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete_R: {KEY_DELETE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"end: {KEY_END}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"end_P: {KEY_END_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"end_R: {KEY_END_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown: {KEY_PAGEDOWN}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown_P: {KEY_PAGEDOWN_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown_R: {KEY_PAGEDOWN_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// ARROWS: LEFT RIGHT UP DOWN

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left: {KEY_LEFT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_P: {KEY_LEFT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_R: {KEY_LEFT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right: {KEY_RIGHT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_P: {KEY_RIGHT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_R: {KEY_RIGHT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"up: {KEY_UP}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"up_P: {KEY_UP_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"up_R: {KEY_UP_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"down: {KEY_DOWN}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"down_P: {KEY_DOWN_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"down_R: {KEY_DOWN_RELEASED}");

	/********************************************************************/_col_i++; _row_i=0;
	// NUMLOCK / * - + 7 8 9 4 5 6 1 2 3 0 .

	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_S: {KEY_NUMLOCK_STATUS}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock: {KEY_NUMLOCK}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_P: {KEY_NUMLOCK_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_R: {KEY_NUMLOCK_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide: {KEY_DIVIDE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide_P: {KEY_DIVIDE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide_R: {KEY_DIVIDE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply: {KEY_MULTIPLY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply_P: {KEY_MULTIPLY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply_R: {KEY_MULTIPLY_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract: {KEY_SUBTRACT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract_P: {KEY_SUBTRACT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract_R: {KEY_SUBTRACT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"add: {KEY_ADD}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"add_P: {KEY_ADD_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"add_R: {KEY_ADD_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7: {KEY_NUMPAD7}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7_P: {KEY_NUMPAD7_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7_R: {KEY_NUMPAD7_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8: {KEY_NUMPAD8}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8_P: {KEY_NUMPAD8_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8_R: {KEY_NUMPAD8_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9: {KEY_NUMPAD9}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9_P: {KEY_NUMPAD9_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9_R: {KEY_NUMPAD9_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4: {KEY_NUMPAD4}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4_P: {KEY_NUMPAD4_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4_R: {KEY_NUMPAD4_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5: {KEY_NUMPAD5}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5_P: {KEY_NUMPAD5_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5_R: {KEY_NUMPAD5_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6: {KEY_NUMPAD6}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6_P: {KEY_NUMPAD6_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6_R: {KEY_NUMPAD6_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1: {KEY_NUMPAD1}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1_P: {KEY_NUMPAD1_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1_R: {KEY_NUMPAD1_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2: {KEY_NUMPAD2}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2_P: {KEY_NUMPAD2_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2_R: {KEY_NUMPAD2_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3: {KEY_NUMPAD3}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3_P: {KEY_NUMPAD3_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3_R: {KEY_NUMPAD3_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0: {KEY_NUMPAD0}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0_P: {KEY_NUMPAD0_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0_R: {KEY_NUMPAD0_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal: {KEY_DECIMAL}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal_P: {KEY_DECIMAL_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal_R: {KEY_DECIMAL_RELEASED}");
}
	
if (show_mouse_debug) {
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"MOUSE");
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any: {MB_ANY}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_P: {MB_ANY_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_R: {MB_ANY_RELEASE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none: {MB_NONE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_P: {MB_NONE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_R: {MB_NONE_RELEASE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1: {MB_LEFT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1_P: {MB_LEFT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1_R: {MB_LEFT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2: {MB_RIGHT}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2_P: {MB_RIGHT_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2_R: {MB_RIGHT_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3: {MB_MIDDLE}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3_P: {MB_MIDDLE_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3_R: {MB_MIDDLE_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4: {MB_SIDE1}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4_P: {MB_SIDE1_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4_R: {MB_SIDE1_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5: {MB_SIDE2}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5_P: {MB_SIDE2_PRESSED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5_R: {MB_SIDE2_RELEASED}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"wheel_up: {MB_WHEEL_UP}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"wheel_down: {MB_WHEEL_DOWN}");
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"X: {mouse_x}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"Y: {mouse_y}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"lastbutton: {mouse_lastbutton}");
	
}
