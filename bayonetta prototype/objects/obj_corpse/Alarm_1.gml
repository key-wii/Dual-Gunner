/// @description decrease X's image scale
if (scale > 0) scale -= .03 / (scale / 2);
if (scale < 0) {
	scale = 0;
	alarm_set(2, 1);
}
else alarm_set(1, 1);