// obj_input_manager - step


function gamepad_definitions() {
	
	#region GAMEPAD DEFINITIONS
	
	var _gp_num = gamepad_get_device_count(); //siempre es 12
	
	for (var _i = 0; _i < _gp_num; _i++;){
	
		if gamepad_is_connected(_i) {
			
			gamepad_set_axis_deadzone(_i, global.gamepad_dead_zone);
			gamepad_set_button_threshold(_i, 0.01); //Reduce el recorrido de los shoulderb casi a zero.
			
			global.joy_sticklh_value[_i] = gamepad_axis_value(_i, gp_axislh);
			global.joy_sticklv_value[_i] = gamepad_axis_value(_i, gp_axislv);
			global.joy_stickl_moving[_i] = (gamepad_axis_value(_i, gp_axislh) != 0 || gamepad_axis_value(_i, gp_axislv) != 0);
			global.joy_stickl_direction[_i] = point_direction(0, 0, gamepad_axis_value(_i, gp_axislh), gamepad_axis_value(_i, gp_axislv));
			
			#region joy_stickl_padl
			global.joy_stickl_padl[_i] = sign( gamepad_axis_value(_i, gp_axislh) ) == -1;

			global.joy_stickl_padl_pressed[_i] = 0;
				if ( joy_stickl_padl_pressed == false && global.joy_stickl_padl[_i] == 1 ){
					global.joy_stickl_padl_pressed[_i] = 1;
					joy_stickl_padl_pressed = true;
				}
				if ( joy_stickl_padl_pressed == true && global.joy_stickl_padl[_i] == 0 ){
					global.joy_stickl_padl_pressed[_i] = 0;
					joy_stickl_padl_pressed = false;
				}
			
			global.joy_stickl_padl_released[_i] = 0;
				if ( joy_stickl_padl_released == false && global.joy_stickl_padl[_i] == 0 ){
					global.joy_stickl_padl_released[_i] = 1;
					joy_stickl_padl_released = true;
				}
				if ( joy_stickl_padl_released == true && global.joy_stickl_padl[_i] == 1 ){
					global.joy_stickl_padl_released[_i] = 0;
					joy_stickl_padl_released = false;
				}
			#endregion
			
			#region joy_stickl_padr
			global.joy_stickl_padr[_i] = sign( gamepad_axis_value(_i, gp_axislh) ) == 1;

			global.joy_stickl_padr_pressed[_i] = 0;
				if ( joy_stickl_padr_pressed == false && global.joy_stickl_padr[_i] == 1 ){
					global.joy_stickl_padr_pressed[_i] = 1;
					joy_stickl_padr_pressed = true;
				}
				if ( joy_stickl_padr_pressed == true && global.joy_stickl_padr[_i] == 0 ){
					global.joy_stickl_padr_pressed[_i] = 0;
					joy_stickl_padr_pressed = false;
				}
			
			global.joy_stickl_padr_released[_i] = 0;
				if ( joy_stickl_padr_released == false && global.joy_stickl_padr[_i] == 0 ){
					global.joy_stickl_padr_released[_i] = 1;
					joy_stickl_padr_released = true;
				}
				if ( joy_stickl_padr_released == true && global.joy_stickl_padr[_i] == 1 ){
					global.joy_stickl_padr_released[_i] = 0;
					joy_stickl_padr_released = false;
				}
			#endregion

			#region joy_stickl_padu
			global.joy_stickl_padu[_i] = sign( gamepad_axis_value(_i, gp_axislv) ) == -1;
			
			global.joy_stickl_padu_pressed[_i] = 0;
				if ( joy_stickl_padu_pressed == false && global.joy_stickl_padu[_i] == 1 ){
					global.joy_stickl_padu_pressed[_i] = 1;
					joy_stickl_padu_pressed = true;
				}
				if ( joy_stickl_padu_pressed == true && global.joy_stickl_padu[_i] == 0 ){
					global.joy_stickl_padu_pressed[_i] = 0;
					joy_stickl_padu_pressed = false;
				}
			
			global.joy_stickl_padu_released[_i] = 0;
				if ( joy_stickl_padu_released == false && global.joy_stickl_padu[_i] == 0 ){
					global.joy_stickl_padu_released[_i] = 1;
					joy_stickl_padu_released = true;
				}
				if ( joy_stickl_padu_released == true && global.joy_stickl_padu[_i] == 1 ){
					global.joy_stickl_padu_released[_i] = 0;
					joy_stickl_padu_released = false;
				}
			#endregion
			
			#region joy_stickl_padd
			global.joy_stickl_padd[_i] = sign( gamepad_axis_value(_i, gp_axislv) ) == 1;
			
			global.joy_stickl_padd_pressed[_i] = 0;
				if ( joy_stickl_padd_pressed == false && global.joy_stickl_padd[_i] == 1 ){
					global.joy_stickl_padd_pressed[_i] = 1;
					joy_stickl_padd_pressed = true;
				}
				if ( joy_stickl_padd_pressed == true && global.joy_stickl_padd[_i] == 0 ){
					global.joy_stickl_padd_pressed[_i] = 0;
					joy_stickl_padd_pressed = false;
				}
			
			global.joy_stickl_padd_released[_i] = 0;
				if ( joy_stickl_padd_released == false && global.joy_stickl_padd[_i] == 0 ){
					global.joy_stickl_padd_released[_i] = 1;
					joy_stickl_padd_released = true;
				}
				if ( joy_stickl_padd_released == true && global.joy_stickl_padd[_i] == 1 ){
					global.joy_stickl_padd_released[_i] = 0;
					joy_stickl_padd_released = false;
				}
			#endregion
			
			global.joy_stickl[_i] = gamepad_button_check(_i, gp_stickl);
			global.joy_stickl_pressed[_i] = gamepad_button_check_pressed(_i, gp_stickl);
			global.joy_stickl_released[_i] = gamepad_button_check_released(_i, gp_stickl);

			global.joy_stickrh_value[_i] = gamepad_axis_value(_i, gp_axisrh);
			global.joy_stickrv_value[_i] = gamepad_axis_value(_i, gp_axisrv);
			global.joy_stickr_active[_i] = (gamepad_axis_value(_i, gp_axisrh) != 0 || gamepad_axis_value(_i, gp_axisrv) != 0);
			global.joy_stickr_direction[_i] = point_direction(0, 0, gamepad_axis_value(_i, gp_axisrh), gamepad_axis_value(_i, gp_axisrv));
			
			#region joy_stickr_padl
			global.joy_stickr_padl[_i] = sign( gamepad_axis_value(_i, gp_axisrh) ) == -1;
			
			global.joy_stickr_padl_pressed[_i] = 0;
				if ( joy_stickr_padl_pressed == false && global.joy_stickr_padl[_i] == 1 ){
					global.joy_stickr_padl_pressed[_i] = 1;
					joy_stickr_padl_pressed = true;
				}
				if ( joy_stickr_padl_pressed == true && global.joy_stickr_padl[_i] == 0 ){
					global.joy_stickr_padl_pressed[_i] = 0;
					joy_stickr_padl_pressed = false;
				}
			
			global.joy_stickr_padl_released[_i] = 0;
				if ( joy_stickr_padl_released == false && global.joy_stickr_padl[_i] == 0 ){
					global.joy_stickr_padl_released[_i] = 1;
					joy_stickr_padl_released = true;
				}
				if ( joy_stickr_padl_released == true && global.joy_stickr_padl[_i] == 1 ){
					global.joy_stickr_padl_released[_i] = 0;
					joy_stickr_padl_released = false;
				}
			#endregion
			
			#region joy_stickr_padr
			global.joy_stickr_padr[_i] = sign( gamepad_axis_value(_i, gp_axisrh) ) == 1;
			
			global.joy_stickr_padr_pressed[_i] = 0;
				if ( joy_stickr_padr_pressed == false && global.joy_stickr_padr[_i] == 1 ){
					global.joy_stickr_padr_pressed[_i] = 1;
					joy_stickr_padr_pressed = true;
				}
				if ( joy_stickr_padr_pressed == true && global.joy_stickr_padr[_i] == 0 ){
					global.joy_stickr_padr_pressed[_i] = 0;
					joy_stickr_padr_pressed = false;
				}
			
			global.joy_stickr_padr_released[_i] = 0;
				if ( joy_stickr_padr_released == false && global.joy_stickr_padr[_i] == 0 ){
					global.joy_stickr_padr_released[_i] = 1;
					joy_stickr_padr_released = true;
				}
				if ( joy_stickr_padr_released == true && global.joy_stickr_padr[_i] == 1 ){
					global.joy_stickr_padr_released[_i] = 0;
					joy_stickr_padr_released = false;
				}
			#endregion

			#region joy_stickr_padu
			global.joy_stickr_padu[_i] = sign( gamepad_axis_value(_i, gp_axisrv) ) == -1;
			
			global.joy_stickr_padu_pressed[_i] = 0;
				if ( joy_stickr_padu_pressed == false && global.joy_stickr_padu[_i] == 1 ){
					global.joy_stickr_padu_pressed[_i] = 1;
					joy_stickr_padu_pressed = true;
				}
				if ( joy_stickr_padu_pressed == true && global.joy_stickr_padu[_i] == 0 ){
					global.joy_stickr_padu_pressed[_i] = 0;
					joy_stickr_padu_pressed = false;
				}
			
			global.joy_stickr_padu_released[_i] = 0;
				if ( joy_stickr_padu_released == false && global.joy_stickr_padu[_i] == 0 ){
					global.joy_stickr_padu_released[_i] = 1;
					joy_stickr_padu_released = true;
				}
				if ( joy_stickr_padu_released == true && global.joy_stickr_padu[_i] == 1 ){
					global.joy_stickr_padu_released[_i] = 0;
					joy_stickr_padu_released = false;
				}
			#endregion
			
			#region joy_stickr_padd
			global.joy_stickr_padd[_i] = sign( gamepad_axis_value(_i, gp_axisrv) ) == 1;
			
			global.joy_stickr_padd_pressed[_i] = 0;
				if ( joy_stickr_padd_pressed == false && global.joy_stickr_padd[_i] == 1 ){
					global.joy_stickr_padd_pressed[_i] = 1;
					joy_stickr_padd_pressed = true;
				}
				if ( joy_stickr_padd_pressed == true && global.joy_stickr_padd[_i] == 0 ){
					global.joy_stickr_padd_pressed[_i] = 0;
					joy_stickr_padd_pressed = false;
				}
			
			global.joy_stickr_padd_released[_i] = 0;
				if ( joy_stickr_padd_released == false && global.joy_stickr_padd[_i] == 0 ){
					global.joy_stickr_padd_released[_i] = 1;
					joy_stickr_padd_released = true;
				}
				if ( joy_stickr_padd_released == true && global.joy_stickr_padd[_i] == 1 ){
					global.joy_stickr_padd_released[_i] = 0;
					joy_stickr_padd_released = false;
				}
			#endregion
			
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