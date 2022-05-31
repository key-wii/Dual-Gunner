/// @description Return to Idle
attacking = false;

var scale = 3;
with (attack_arm) {
	image_xscale = scale;
	image_yscale = scale;
	len_adjust = 0;
	dir_adjust = 0;
	sprite_index =  spriteDefault;
	alarm_set(5, 0);
	alarm_set(1, 1);
}
with (other_arm) {
	len_adjust = 0;
	dir_adjust = 0;
	sprite_index =  spriteDefault;
	alarm_set(4, 0);
	alarm_set(1, 1);
}

alarm_set(3, 60 + irandom(50));