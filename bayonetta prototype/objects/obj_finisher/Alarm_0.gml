image_alpha -= .3;
if (image_alpha <= 0) {
	instance_destroy();
}
alarm_set(0, 1);