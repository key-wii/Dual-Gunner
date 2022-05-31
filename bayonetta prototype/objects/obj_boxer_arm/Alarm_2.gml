/// @description Windup (non-attacking arm)
if (dir_adjust < 20) {
	dir_adjust += .75;
	alarm_set(2, 1);
} else if (dir_adjust > 100) dir_adjust = 100;