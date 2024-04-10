draw_self();

//draw_text(100, 100, y);
//draw_text(100, 130, -string_height(credits_text));

draw_set_font(fnt_credits);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x, y, credits_text);

//draw_set_color(c_white);
//draw_rectangle(x,y,x+10,y+string_height(credits_text),false);

if ( y < -string_height(credits_text) ) {
    if (!instance_exists(obj_transition_room)) {
	    global.game_state = GAME_STATES.MAIN_MENU;
		instance_create_layer(0,0,"Instances",obj_transition_room,{_next_room: rm_main_menu_screen});
	}
}