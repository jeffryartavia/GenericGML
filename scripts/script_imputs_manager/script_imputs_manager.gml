function imputs_manager() {
	
	is_keyboard_connected = true;
	
	var _gp_num = gamepad_get_device_count(); //siempre es 12
	
	for (var _i = 0; _i < _gp_num; _i++;){
	
		if gamepad_is_connected(_i) {
		
			is_keyboard_connected = false;

			gamepad_set_axis_deadzone(_i, global.gamepad_dead_zone);
	
			var _haxis = gamepad_axis_value(_i, gp_axislh);
			var _vaxis = gamepad_axis_value(_i, gp_axislv);
	
			key_left = sign(_haxis) == -1;
			key_right = sign(_haxis) == 1;
			key_up = sign(_vaxis) == -1;
			key_down = sign(_vaxis) == 1;
	
			if gamepad_button_check(_i, gp_padl){key_left = 1;}
			if gamepad_button_check(_i, gp_padd){key_down = 1;}
			if gamepad_button_check(_i, gp_padu){key_up = 1;}
			if gamepad_button_check(_i, gp_padr){key_right = 1;}
	
			key_left_stick_r = sign( gamepad_axis_value(_i, gp_axisrh) ) == -1;
			key_right_stick_r = sign( gamepad_axis_value(_i, gp_axisrh) ) == 1;
			key_up_stick_r = sign( gamepad_axis_value(_i, gp_axisrv) ) == -1;
			key_down_stick_r = sign( gamepad_axis_value(_i, gp_axisrv) ) == 1;
	
			key_shot_r = ( gamepad_axis_value(_i, gp_axisrh) != 0 || gamepad_axis_value(_i, gp_axisrv) != 0 );

			key_jump=0;//key_a
			if (gamepad_button_check_pressed(_i, gp_face1)) {
				key_jump = gamepad_button_check_pressed(_i, gp_face1);
			} else	
			if (gamepad_button_check_pressed(_i, gp_shoulderr)) {
				key_jump = gamepad_button_check_pressed(_i, gp_shoulderr);
			}
	
			key_glide=0;
			if (gamepad_button_check(_i, gp_face1)) {
				key_glide = gamepad_button_check(_i, gp_face1);
			} else	
			if (gamepad_button_check(_i, gp_shoulderr)) {
				key_glide = gamepad_button_check(_i, gp_shoulderr);
			}
	
			key_enter = gamepad_button_check_pressed(_i, gp_face1);
			key_start = gamepad_button_check_pressed(_i, gp_start);
	
			key_b = gamepad_button_check_pressed(_i, gp_face2);
			key_y = gamepad_button_check_pressed(_i, gp_face4);
			key_shot = gamepad_button_check(_i, gp_face3);//key_x
	
		}

	}

	if (is_keyboard_connected) {

		key_left = keyboard_check(ord("A"));
		key_right = keyboard_check(ord("D"));
		key_up = keyboard_check(ord("W"));
		key_down = keyboard_check(ord("S"));
	
		key_left_stick_r = keyboard_check(vk_left);
		key_right_stick_r = keyboard_check(vk_right);
		key_up_stick_r = keyboard_check(vk_up);
		key_down_stick_r = keyboard_check(vk_down);
	
		if ( mouse_check_button(mb_left) ) {
	    
		}
	
	
		key_jump = keyboard_check_pressed(vk_space);
		
		key_glide = keyboard_check(vk_space);
	
		key_shot_r = ( key_left_stick_r!=0||key_right_stick_r!=0||key_up_stick_r!=0||key_down_stick_r!=0 || mouse_check_button(mb_left) );
		key_shot = keyboard_check(vk_control);
	
		key_enter = keyboard_check_pressed(vk_enter);
		key_start = keyboard_check_pressed(vk_enter);
		key_y = keyboard_check_pressed(vk_enter);
	
		key_pageup = keyboard_check_pressed(vk_pageup);
		key_pagedown = keyboard_check_pressed(vk_pagedown);
	}


}
