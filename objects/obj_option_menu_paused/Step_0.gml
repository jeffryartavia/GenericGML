//MOUSE IN / OUT
if (collision_point(mouse_x, mouse_y, self, false,false)) {
    if (!hover) {
        parent_menu.current_button = collision_point(mouse_x, mouse_y, self, false,false).button_index;
        hover = true;
    }
} else {
    if (hover) {
        hover = false;
    }
}

var _option_object = noone;
if mouse_check_button_pressed(mb_left) {
    _option_object = collision_point(mouse_x, mouse_y, object_index, false,true);
    if _option_object {
        //show_message($"con el mouse {_option_object.button_index} {_option_object.button_text}");
		//audio_play_sound(snd_option_selected, 1, false);
    }
}

