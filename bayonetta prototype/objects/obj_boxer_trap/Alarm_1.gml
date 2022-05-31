/// @description Disappear
if (image_alpha > 0) {
	image_alpha -= .05;
	alarm_set(1, 1);
} else instance_destroy();