/// @description Just woke up
if (len_adjust < 0) {
	len_adjust += 8;
	alarm_set(0, 1);
} else if (len_adjust > 0) len_adjust = 0;