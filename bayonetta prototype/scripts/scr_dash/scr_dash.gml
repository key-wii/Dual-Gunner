function dash() {
	with (move) if (can_move) {
		dashSpd = 19;
		dash_tick = 0;
		dash_dir_change = 0;
		if (uInput && dInput) {
			//do nothing
		} else if (uInput) {
			dashing = true;
			direction = 90;
		} else if (dInput) {
			dashing = true;
			direction = 270;
		}
		if (lInput && rInput) {
			//do nothing
		} else if (lInput) {
			dashing = true;
			if (direction == 90) direction += 45;
			else if (direction == 270) direction -= 45;
			else direction = 180;
		} else if (rInput) {
			dashing = true;
			if (direction == 90) direction -= 45;
			else if (direction == 270) direction += 45;
			else direction = 0;
		}
	}
}

function dash2(spd) {
	with (move) if (can_move) {
		dashSpd = spd;
		if (uInput && dInput) {
			//do nothing
		} else if (uInput) {
			dashing = true;
			direction = 90;
		} else if (dInput) {
			dashing = true;
			direction = 270;
		}
		if (lInput && rInput) {
			//do nothing
		} else if (lInput) {
			dashing = true;
			if (direction == 90) direction += 45;
			else if (direction == 270) direction -= 45;
			else direction = 180;
		} else if (rInput) {
			dashing = true;
			if (direction == 90) direction -= 45;
			else if (direction == 270) direction += 45;
			else direction = 0;
		}
		if (!dashing) {
			dashing = true;
			direction = other.direction;
			//other.dashStill = true;
		}
	}
}