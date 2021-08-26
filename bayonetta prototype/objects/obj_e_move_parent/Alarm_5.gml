if (speed > 0) {
	speed -= .5;
	alarm_set(5, 1)
} else if (speed < 0) {
	speed += .5;
	alarm_set(5, 1)
} else kBack = false;
move_wrap(true, true, -72);