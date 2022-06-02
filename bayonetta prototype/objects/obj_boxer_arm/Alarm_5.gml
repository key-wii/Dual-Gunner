/// @description Attack (attacking arm)
if (dir_adjust > -90) {
	dir_adjust -= 20;
	alarm_set(5, 1);
} else if (dir_adjust > -160) {
	sprite_index =  spriteDefault;
	invincible = false;
	lethal = false;
	dir_adjust -= 16;
	alarm_set(5, 1);
} else if (dir_adjust > -200) {
	dir_adjust -= 8;
	alarm_set(5, 1);
} else if (dir_adjust > 270) {
	dir_adjust = 0;
}