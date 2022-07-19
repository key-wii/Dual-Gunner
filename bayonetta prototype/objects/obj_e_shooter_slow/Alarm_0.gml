/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

fire_bull_e(snd_shoot_e3, direction, obj_bull_e, 0, 0, 9, 1.2, 2);

alarm_set(0, 50);