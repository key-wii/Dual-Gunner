/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

var ran = irandom_range(-2, 2) * 6;
fire_bull_e(snd_shoot_e3, direction		 + ran, obj_bull_e, 0, 0, 9, 1.2, 2);
wideCounter++
if (wideCounter == 3) {
	fire_bull_e(		  -1, direction + 50 + ran, obj_bull_e, 0, 0, 11, .8, .5);
	fire_bull_e(		  -1, direction - 50 + ran, obj_bull_e, 0, 0, 11, .8, .5);
	wideCounter = 0;
	alarm_set(0, 70);
	exit;
}

alarm_set(0, 10);