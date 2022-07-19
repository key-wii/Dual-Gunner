/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

fire_bull_e(snd_shoot_e, direction + 5, obj_bull_e, 0, 0, 2, .7, .5);
fire_bull_e(		 -1, direction - 5, obj_bull_e, 0, 0, 2, .7, .5);

alarm_set(0, 30);