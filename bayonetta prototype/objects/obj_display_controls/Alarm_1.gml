/// @description Increase image alpha
if (image_alpha < 1) {
	image_alpha += .025;
	alarm_set(1, 1);
}