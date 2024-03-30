function step_game_state_playing(){
	if (!instance_exists(obj_fade_out_room)) {
    
		if (!instance_exists(obj_dialog_text)) {
		    instance_create_layer(x, y, "Instances",obj_dialog_text,{
				draw_alpha: 0,
				display_name: true,
				name: "Jeffry",
				side: "left",
				textos : {
					t001 : "Hola Jeffry,",
					t002 : "2Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
					t003 : "3Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
					t004 : "4Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
					t005 : "5Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
				},
				width: 1000,
				height: 300,
				position: 210,
				color_scheme: "blue"
			});
		}
	
	}
}