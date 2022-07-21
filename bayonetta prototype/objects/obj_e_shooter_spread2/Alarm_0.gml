/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

fire_bull_e(snd_shoot_e,	 direction, obj_bull_e_bounce, 0, 0, 1.5, .5, .5);
fire_bull_e(		 -1, direction + 5, obj_bull_e_bounce, 0, 0,   2,	.7, .5);
fire_bull_e(		 -1, direction - 5, obj_bull_e_bounce, 0, 0,   2, .7, .5);

alarm_set(0, 30);