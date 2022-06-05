if (speed > -.5 && speed < .5) {
	speed = 0;
	kBack = false;
}
else if (speed > 0) {
	speed -= .5;
	alarm_set(5, 1);
} else if (speed < 0) {
	speed += .5;
	alarm_set(5, 1);
}
move_wrap(true, true, -72);