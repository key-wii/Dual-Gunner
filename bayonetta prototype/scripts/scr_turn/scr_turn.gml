function turn(ddir) {
	if (turn_dir == 0)
		if (direction >= 0 && direction < 45 || direction >= 90 && direction < 135 ||
			direction >= 180 && direction < 225 || direction >= 270 && direction < 315) turn_dir = ddir;
		if (direction >= 45 && direction < 90 || direction >= 135 && direction < 180 ||
			direction >= 225 && direction < 270 || direction >= 315 && direction < 360) turn_dir = -ddir;
	direction += turn_dir * -dir_face;
}