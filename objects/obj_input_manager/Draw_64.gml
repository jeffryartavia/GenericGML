draw_set_font(fnt_century_gothic8);

var _row_height = 11;
var _row_i = 0;
var _col_width = 125;
var _col_i = 0;

if (show_gamepad_debug) {
	
	
	var _gp_num = gamepad_get_device_count(); //siempre es 12
	
	for (var _i = 0; _i < _gp_num; _i++;){
	
		if gamepad_is_connected(_i) {
	
	
			draw_text(_i*_col_width, _row_i++*_row_height, $"GAMEPAD#: {_i} of {_gp_num}");	

			draw_text(_i*_col_width, _row_i++*_row_height, $"sticklh_value: {global.joy_sticklh_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"sticklv_value: {global.joy_sticklv_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_moving: {global.joy_stickl_moving[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_direction: {global.joy_stickl_direction[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padl: {global.joy_stickl_padl[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padr: {global.joy_stickl_padr[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padu: {global.joy_stickl_padu[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_padd: {global.joy_stickl_padd[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl: {global.joy_stickl[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_P: {global.joy_stickl_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickl_R: {global.joy_stickl_released[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"stickrh_value: {global.joy_stickrh_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickrv_value: {global.joy_stickrv_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_active: {global.joy_stickr_active[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_direction: {global.joy_stickr_direction[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padl: {global.joy_stickr_padl[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padr: {global.joy_stickr_padr[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padu: {global.joy_stickr_padu[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_padd: {global.joy_stickr_padd[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr: {global.joy_stickr[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_P: {global.joy_stickr_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"stickr_R: {global.joy_stickr_released[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"padl: {global.joy_padl[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padl_P: {global.joy_padl_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padl_R: {global.joy_padl_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr: {global.joy_padr[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr_P: {global.joy_padr_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padr_R: {global.joy_padr_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu: {global.joy_padu[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu_P: {global.joy_padu_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padu_R: {global.joy_padu_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd: {global.joy_padd[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd_P: {global.joy_padd_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"padd_R: {global.joy_padd_released[_i]}");

			draw_text(_i*_col_width, _row_i++*_row_height, $"face1: {global.joy_face1[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face1_P: {global.joy_face1_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face1_R: {global.joy_face1_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2: {global.joy_face2[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2_P: {global.joy_face2_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face2_R: {global.joy_face2_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3: {global.joy_face3[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3_P: {global.joy_face3_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face3_R: {global.joy_face3_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4: {global.joy_face4[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4_P: {global.joy_face4_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"face4_R: {global.joy_face4_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl: {global.joy_shoulderl[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl_P: {global.joy_shoulderl_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderl_R: {global.joy_shoulderl_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_value: {global.joy_shoulderlb_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb: {global.joy_shoulderlb[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_P: {global.joy_shoulderlb_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderlb_R: {global.joy_shoulderlb_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr: {global.joy_shoulderr[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr_P: {global.joy_shoulderr_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderr_R: {global.joy_shoulderr_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_value: {global.joy_shoulderrb_value[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb: {global.joy_shoulderrb[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_P: {global.joy_shoulderrb_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"shoulderrb_R: {global.joy_shoulderrb_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"select: {global.joy_select[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"select_P: {global.joy_select_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"select_R: {global.joy_select_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"anjoy_starty: {global.joy_start[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"start_P: {global.joy_start_pressed[_i]}");
			draw_text(_i*_col_width, _row_i++*_row_height, $"start_R: {global.joy_start_released[_i]}");
			
			draw_text(_i*_col_width, _row_i++*_row_height, $"Description: {gamepad_get_description(_i)}");
			
			

			_i++; _row_i=0;

		}
	}
}

if (show_keyboard_debug) {
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"KEYBOARD");
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"any: {global.key_any}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_P: {global.key_any_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_R: {global.key_any_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"none: {global.key_none}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_P: {global.key_none_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_R: {global.key_none_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// ESCAPE f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape: {global.key_escape}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape_P: {global.key_escape_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"escape_R: {global.key_escape_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1: {global.key_f1}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1_P: {global.key_f1_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f1_R: {global.key_f1_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2: {global.key_f2}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2_P: {global.key_f2_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f2_R: {global.key_f2_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3: {global.key_f3}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3_P: {global.key_f3_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f3_R: {global.key_f3_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4: {global.key_f4}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4_P: {global.key_f4_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f4_R: {global.key_f4_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5: {global.key_f5}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5_P: {global.key_f5_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f5_R: {global.key_f5_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6: {global.key_f6}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6_P: {global.key_f6_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f6_R: {global.key_f6_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7: {global.key_f7}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7_P: {global.key_f7_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f7_R: {global.key_f7_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8: {global.key_f8}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8_P: {global.key_f8_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f8_R: {global.key_f8_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9: {global.key_f9}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9_P: {global.key_f9_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f9_R: {global.key_f9_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10: {global.key_f10}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10_P: {global.key_f10_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f10_R: {global.key_f10_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11: {global.key_f11}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11_P: {global.key_f11_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f11_R: {global.key_f11_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12: {global.key_f12}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12_P: {global.key_f12_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f12_R: {global.key_f12_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// ` 1 2 3 4 5 6 7 8 9 0 - =
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote: {global.key_backquote}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote_P: {global.key_backquote_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backquote_R: {global.key_backquote_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"1: {global.key_1}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"1_P: {global.key_1_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"1_R: {global.key_1_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"2: {global.key_2}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"2_P: {global.key_2_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"2_R: {global.key_2_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"3: {global.key_3}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"3_P: {global.key_3_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"3_R: {global.key_3_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"4: {global.key_4}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"4_P: {global.key_4_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"4_R: {global.key_4_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"5: {global.key_5}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"5_P: {global.key_5_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"5_R: {global.key_5_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"6: {global.key_6}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"6_P: {global.key_6_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"6_R: {global.key_6_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"7: {global.key_7}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"7_P: {global.key_7_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"7_R: {global.key_7_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"8: {global.key_8}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"8_P: {global.key_8_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"8_R: {global.key_8_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"9: {global.key_9}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"9_P: {global.key_9_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"9_R: {global.key_9_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"0: {global.key_0}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"0_P: {global.key_0_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"0_R: {global.key_0_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"minus: {global.key_minus}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"minus_P: {global.key_minus_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"minus_R: {global.key_minus_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals: {global.key_equals}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals_P: {global.key_equals_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"equals_R: {global.key_equals_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace: {global.key_backspace}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace_P: {global.key_backspace_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backspace_R: {global.key_backspace_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// tab q w e r t y u i o p [ ] \ 
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab: {global.key_tab}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab_P: {global.key_tab_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"tab_R: {global.key_tab_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"q: {global.key_q}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"q_P: {global.key_q_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"q_R: {global.key_q_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"w: {global.key_w}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"w_P: {global.key_w_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"w_R: {global.key_w_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"e: {global.key_e}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"e_P: {global.key_e_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"e_R: {global.key_e_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"r: {global.key_r}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"r_P: {global.key_r_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"r_R: {global.key_r_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"t: {global.key_t}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"t_P: {global.key_t_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"t_R: {global.key_t_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"y: {global.key_y}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"y_P: {global.key_y_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"y_R: {global.key_y_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"u: {global.key_u}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"u_P: {global.key_u_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"u_R: {global.key_u_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"i: {global.key_i}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"i_P: {global.key_i_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"i_R: {global.key_i_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"o: {global.key_o}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"o_P: {global.key_o_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"o_R: {global.key_o_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"p: {global.key_p}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"p_P: {global.key_p_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"p_R: {global.key_p_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket: {global.key_left_bracket}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket_P: {global.key_left_bracket_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_bracket_R: {global.key_left_bracket_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket: {global.key_right_bracket}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket_P: {global.key_right_bracket_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_bracket_R: {global.key_right_bracket_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash: {global.key_backslash}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash_P: {global.key_backslash_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"backslash_R: {global.key_backslash_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// CAPS_LOCK a s d f g h j k l ; '
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock: {global.key_caps_lock}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock_P: {global.key_caps_lock_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"caps_lock_R: {global.key_caps_lock_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"a: {global.key_a}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"a_P: {global.key_a_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"a_R: {global.key_a_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"s: {global.key_s}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"s_P: {global.key_s_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"s_R: {global.key_s_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"d: {global.key_d}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"d_P: {global.key_d_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"d_R: {global.key_d_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f: {global.key_f}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f_P: {global.key_f_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"f_R: {global.key_f_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"g: {global.key_g}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"g_P: {global.key_g_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"g_R: {global.key_g_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"h: {global.key_h}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"h_P: {global.key_h_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"h_R: {global.key_h_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"j: {global.key_j}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"j_P: {global.key_j_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"j_R: {global.key_j_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"k: {global.key_k}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"k_P: {global.key_k_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"k_R: {global.key_k_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"l: {global.key_l}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"l_P: {global.key_l_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"l_R: {global.key_l_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon: {global.key_semicolon}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon_P: {global.key_semicolon_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"semicolon_R: {global.key_semicolon_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote: {global.key_quote}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote_P: {global.key_quote_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"quote_R: {global.key_quote_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter: {global.key_enter}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter_P: {global.key_enter_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"enter_R: {global.key_enter_released}");

		/********************************************************************/_col_i++; _row_i=0;
		// SHIFT z x c v b n m , . /

		draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any: {global.key_shift_any}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any_P: {global.key_shift_any_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"shift_any_R: {global.key_shift_any_released}");
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift: {global.key_shiftl}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift_P: {global.key_shiftl_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lshift_R: {global.key_shiftl_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"z: {global.key_z}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"z_P: {global.key_z_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"z_R: {global.key_z_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"x: {global.key_x}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"x_P: {global.key_x_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"x_R: {global.key_x_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"c: {global.key_c}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"c_P: {global.key_c_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"c_R: {global.key_c_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"v: {global.key_v}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"v_P: {global.key_v_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"v_R: {global.key_v_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"b: {global.key_b}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"b_P: {global.key_b_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"b_R: {global.key_b_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"n: {global.key_n}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"n_P: {global.key_n_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"n_R: {global.key_n_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"m: {global.key_m}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"m_P: {global.key_m_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"m_R: {global.key_m_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma: {global.key_comma}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma_P: {global.key_comma_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"comma_R: {global.key_comma_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"period: {global.key_period}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"period_P: {global.key_period_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"period_R: {global.key_period_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash: {global.key_slash}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash_P: {global.key_slash_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"slash_R: {global.key_slash_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift: {global.key_shiftr}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift_P: {global.key_shiftr_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rshift_R: {global.key_shiftr_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// CONTROL WINDOWS ALT SPACEBAR CONTEXT_MENU ALT_R CONTROL_R
		
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any: {global.key_control_any}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any_P: {global.key_control_any_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"control_any_R: {global.key_control_any_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any: {global.key_alt_any}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any_P: {global.key_alt_any_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"alt_any_R: {global.key_alt_any_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol: {global.key_controll}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol_P: {global.key_controll_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lcontrol_R: {global.key_controll_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows: {global.key_windows}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows_P: {global.key_windows_pressed}");
			draw_text(_col_i*_col_width, _row_i++*_row_height, $"windows_R: {global.key_windows_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt: {global.key_altl}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt_P: {global.key_altl_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"lalt_R: {global.key_altl_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"space: {global.key_space}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"space_P: {global.key_space_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"space_R: {global.key_space_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt: {global.key_ralt}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt_P: {global.key_ralt_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"ralt_R: {global.key_ralt_released}");
		// FUNCTION key is not defined.
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu: {global.key_context_menu}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu_P: {global.key_context_menu_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"context_menu_R: {global.key_context_menu_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol: {global.key_controlr}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol_P: {global.key_controlr_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"rcontrol_R: {global.key_controlr_released}");

		/********************************************************************/_col_i++; _row_i=0;
		// PRINT_SCREEN SCROLL_LOCK PAUSE_BREAK

			draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen: {global.key_printscreen}");
			draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen_P: {global.key_printscreen_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"printscreen_R: {global.key_printscreen_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock: {global.key_scroll_lock}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock_P: {global.key_scroll_lock_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"scroll_lock_R: {global.key_scroll_lock_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause: {global.key_pause}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause_P: {global.key_pause_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pause_R: {global.key_pause_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// INSERT HOME PAGE_UP DELETE END PAGE_DOWN

		draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert: {global.key_insert}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert_P: {global.key_insert_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"insert_R: {global.key_insert_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"home: {global.key_home}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"home_P: {global.key_home_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"home_R: {global.key_home_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup: {global.key_pageup}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup_P: {global.key_pageup_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pageup_R: {global.key_pageup_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete: {global.key_delete}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete_P: {global.key_delete_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"delete_R: {global.key_delete_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"end: {global.key_end}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"end_P: {global.key_end_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"end_R: {global.key_end_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown: {global.key_pagedown}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown_P: {global.key_pagedown_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"pagedown_R: {global.key_pagedown_released}");
		
		/********************************************************************/_col_i++; _row_i=0;
		// ARROWS: LEFT RIGHT UP DOWN

		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left: {global.key_left}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_P: {global.key_left_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"left_R: {global.key_left_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right: {global.key_right}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_P: {global.key_right_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"right_R: {global.key_right_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"up: {global.key_up}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"up_P: {global.key_up_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"up_R: {global.key_up_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"down: {global.key_down}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"down_P: {global.key_down_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"down_R: {global.key_down_released}");

		/********************************************************************/_col_i++; _row_i=0;
		// NUMLOCK / * - + 7 8 9 4 5 6 1 2 3 0 .

		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_S: {global.key_numlock_status}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock: {global.key_numlock}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_P: {global.key_numlock_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numlock_R: {global.key_numlock_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide: {global.key_divide}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide_P: {global.key_divide_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"divide_R: {global.key_divide_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply: {global.key_multiply}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply_P: {global.key_multiply_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"multiply_R: {global.key_multiply_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract: {global.key_subtract}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract_P: {global.key_subtract_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"subtract_R: {global.key_subtract_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"add: {global.key_add}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"add_P: {global.key_add_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"add_R: {global.key_add_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7: {global.key_numpad7}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7_P: {global.key_numpad7_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad7_R: {global.key_numpad7_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8: {global.key_numpad8}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8_P: {global.key_numpad8_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad8_R: {global.key_numpad8_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9: {global.key_numpad9}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9_P: {global.key_numpad9_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad9_R: {global.key_numpad9_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4: {global.key_numpad4}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4_P: {global.key_numpad4_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad4_R: {global.key_numpad4_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5: {global.key_numpad5}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5_P: {global.key_numpad5_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad5_R: {global.key_numpad5_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6: {global.key_numpad6}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6_P: {global.key_numpad6_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad6_R: {global.key_numpad6_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1: {global.key_numpad1}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1_P: {global.key_numpad1_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad1_R: {global.key_numpad1_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2: {global.key_numpad2}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2_P: {global.key_numpad2_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad2_R: {global.key_numpad2_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3: {global.key_numpad3}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3_P: {global.key_numpad3_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad3_R: {global.key_numpad3_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0: {global.key_numpad0}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0_P: {global.key_numpad0_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"numpad0_R: {global.key_numpad0_released}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal: {global.key_decimal}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal_P: {global.key_decimal_pressed}");
		draw_text(_col_i*_col_width, _row_i++*_row_height, $"decimal_R: {global.key_decimal_released}");
	}
	
if (show_mouse_debug) {
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"MOUSE");
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any: {global.m_any}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_P: {global.m_any_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"any_R: {global.m_any_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none: {global.m_none}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_P: {global.m_none_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"none_R: {global.m_none_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1: {global.m_left}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1_P: {global.m_left_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"left-1_R: {global.m_left_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2: {global.m_right}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2_P: {global.m_right_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"right-2_R: {global.m_right_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3: {global.m_middle}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3_P: {global.m_middle_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"middle-3_R: {global.m_middle_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4: {global.m_side1}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4_P: {global.m_side1_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side1-4_R: {global.m_side1_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5: {global.m_side2}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5_P: {global.m_side2_pressed}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"side2-5_R: {global.m_side2_release}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"wheel_up: {global.m_wheel_up}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"wheel_down: {global.m_wheel_down}");
	
	
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"x pos: {mouse_x}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"y pos: {mouse_y}");
	draw_text(_col_i*_col_width, _row_i++*_row_height, $"last_button: {mouse_lastbutton}");
	
}

