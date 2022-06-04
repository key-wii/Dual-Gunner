/// @description Appear
if (image_alpha < 1) {
	image_alpha += .2;
	if (image_alpha > 1) image_alpha = 1;
	alarm_set(0, 1);
}