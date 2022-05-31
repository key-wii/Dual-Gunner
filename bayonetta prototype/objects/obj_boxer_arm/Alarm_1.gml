/// @description Wiggle
if (wiggleUp) {
	wiggle += .5;
	if (wiggle >= wiggleMax) wiggleUp = false;
} else {
	wiggle -= .5;
	if (wiggle <= -wiggleMax) wiggleUp = true;
}
alarm_set(1, 1);