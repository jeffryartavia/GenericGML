draw_self();

draw_set_font(fnt_menu_option);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

image_xscale = (string_width(button_text) + padding_horizontal) / sprite_get_width(sprite_index);
image_yscale = (string_height(button_text) + padding_vertical) / sprite_get_height(sprite_index);

//MOUSE IN/OUT
if (parent_menu.current_button == button_index) {
	draw_set_color(make_color_rgb(251, 183, 40));
	if (!ya_sono) {
	    audio_play_sound(snd_option_choose, 1, false);
		ya_sono=true;
	}
} else {
	draw_set_color(c_silver);
	ya_sono=false;
}

draw_text(x,y, button_text);