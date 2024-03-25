if (is_eol) {
	scr_fade_out_draw_alpha();
}

draw_set_font(fnt_century_gothic_22);
draw_set_color(c_black)
if !is_eol draw_set_alpha(0.5);
draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,color_dark,color_light,false);
draw_set_color(c_white)
if !is_eol draw_set_alpha(1);
draw_roundrect_color_ext(100, room_height - 210, room_width - 100, room_height - 20, 20,20,c_white,c_white,true);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)
if !is_eol draw_set_alpha(1);
draw_text_ext(120, room_height - 200, string_copy(current_text, 1, indice),30,view_wport[0]-240);