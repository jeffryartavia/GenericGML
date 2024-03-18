// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_game_state_splash(){
	
	//Verificacion de estado.
	en_el_menu = true;
	
	if (en_el_menu) {
	    game_state = GAME_STATES.SPLASH;
	}
	
	if (!instance_exists(obj_main_splash)) {
		instance_create_layer(view_port_width/2, view_port_height/2,"Instances",obj_main_splash);
	}
	
}