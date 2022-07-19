/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

fire_bull_e(snd_shoot_e2, direction, obj_bull_e, 2, 3, 6, .7, .5);

alarm_set(0, 32);