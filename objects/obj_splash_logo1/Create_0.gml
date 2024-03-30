_time_source_method = function() {
	time_source_destroy(_ts_splash_logo1);
	global.broadcast.splash_logo1_end = true;
}

_ts_splash_logo1 = time_source_create(time_source_game, 4, time_source_units_seconds, _time_source_method);
time_source_start(_ts_splash_logo1);

image_xscale = .9;
image_yscale = .9;
//image_alpha = 0;