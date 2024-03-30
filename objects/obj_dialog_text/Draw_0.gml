if(this_alpha <= 1 && !start_writting){
	if( fade_in_draw_alpha(alpha_dialog_box) ){
		start_writting = true;
	}
	//Caja
	if !is_writing_finished draw_set_alpha(this_alpha);
	draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,color_dark,color_light,false);

	//Borde caja
	if !is_writing_finished draw_set_alpha(1);
	draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,c_white,c_white,true);
}


if start_writting{
	if (is_writing_finished) {
		fade_out_draw_alpha(0);
	}

	draw_set_font(fnt_century_gothic_22);

	//DIALOG BOX
	if !is_writing_finished draw_set_alpha(alpha_dialog_box);
	draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,color_dark,color_light,false);
	draw_set_alpha(1);

	//DIALOG BOX BORDER
	if !is_writing_finished { draw_set_alpha(1) } else { draw_set_alpha(alpha_dialog_box) };
	draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,c_white,c_white,true);
	draw_set_alpha(1);

	//WRITTING
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if !is_writing_finished { draw_set_alpha(1) } else { draw_set_alpha(alpha_dialog_box) };
	draw_set_color(c_white);
	draw_text_ext(120, room_height - 200, string_copy(current_text, 1, letter_count),30,view_wport[0]-240);
	draw_set_alpha(1);
}