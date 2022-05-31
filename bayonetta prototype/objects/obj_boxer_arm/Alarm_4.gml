/// @description Attack (non-attacking arm)
if (dir_adjust > 0) {
	dir_adjust -= 1.5;
	alarm_set(4, 1);
} else if (dir_adjust < 0) dir_adjust = 0;