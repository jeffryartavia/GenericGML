//Un rectangulo negro transparente con this_alpha 0 empezara a cubrir la pantalla cada vez con mas opasitdad.
//al ser persistente en el next_room room se destruira
this_alpha = clamp(this_alpha + (fade_time * 0.02)*global.delta_multiplier, 0, 1) ;

if (this_alpha == 1){
	room_goto(_next_room);
	fade_time = -1;
}

if (this_alpha == 0) && (fade_time == -1){
	instance_destroy();
}


draw_set_color(c_black) ;
draw_set_alpha(this_alpha);
draw_rectangle (
	view_xview[0],
	view_yview[0],
	view_xview[0] + view_wview[0],
	view_yview[0] + view_hview[0],
	0
)

draw_set_alpha(1);