/// @description Shrink/Grow Text
if (textScale > 1) {
	textScale -= .01;
	alarm_set(1, 1);
} else alarm_set(0, 1);

if (textScale2 < 1.5) {
	textScale2 += .01;
	alarm_set(1, 1);
} else alarm_set(0, 1);