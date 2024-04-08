// Musasabi based on: https://www.youtube.com/watch?v=_2CrhKO5ojE

key_up = 0;
key_down = 0;

arr_button_states = ["Play", "Credits", "Exit"];
arr_buttons_length = array_length(arr_button_states);

current_button = 0;

option_gap_vertical = 0;
for (var _i = 0; _i < arr_buttons_length; ++_i) {
    instance_create_layer(x, y+option_gap_vertical, "Instances", obj_option_menu_title, {button_text: arr_button_states[_i], button_index: _i, parent_menu: object_index});
	option_gap_vertical += 128;
}

