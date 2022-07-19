/// @description Fire bullet
/*if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}*/
charging = false;
charge = chargeMax;

//audio_stop_sound(snd_hoedown_charge);
fire_bull_e(snd_hoedown_shoot, direction, obj_bull_cannonball_e, 0, 0, 24, 1, 1);
x_adjust = lengthdir_x(80, direction + 180);
y_adjust = lengthdir_y(80, direction + 180);

alarm_set(0, 250);
