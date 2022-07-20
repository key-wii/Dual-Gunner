/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

fire_bull_e(snd_shoot_e2, direction, obj_bull_e_bounce, 2, 6, 5, .7, .7);

alarm_set(0, 24);