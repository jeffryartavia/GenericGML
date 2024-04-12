// Musasabi based on: https://www.youtube.com/watch?v=_2CrhKO5ojE

key_up = 0;
key_down = 0;

arr_button_states = ["Continuar", "Salir al titulo"];
arr_buttons_length = array_length(arr_button_states);

current_button = 0;

var _gap = 0;
for (var _i = 0; _i < arr_buttons_length; ++_i) {
    instance_create_layer(x, y+_gap, "Instances", obj_option_menu_paused, {button_text: arr_button_states[_i], button_index: _i, parent_menu: object_index});
	_gap += 125;
}


audio_play_sound(snd_paused, 1, false);