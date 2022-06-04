/// @description Disppear
if (image_alpha > 0) {
	image_alpha -= .2;
	alarm_set(2, 1);
}
if (image_alpha <= 0) instance_destroy();