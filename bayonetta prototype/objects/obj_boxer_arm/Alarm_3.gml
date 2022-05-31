/// @description Windup (attacking arm)
if (dir_adjust < 100) {
	dir_adjust += 2;
	alarm_set(3, 1);
} else if (dir_adjust > 100) dir_adjust = 100;