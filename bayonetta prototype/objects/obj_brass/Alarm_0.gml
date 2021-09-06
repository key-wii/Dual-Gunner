if (speed > 0) {
	speed /= drag;
	if (speed <= 0) {
		speed = 0;
		alarm_set(1, 1);
	}
	else if (speed > 0) alarm_set(0, 1);
}