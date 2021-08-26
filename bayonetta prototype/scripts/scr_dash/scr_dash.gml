function dash() {
	with (move) if (can_move) {
		dSpd = 19;
		dash_tick = 0;
		dash_dir_change = 0;
		if (keyboard_check(ord("W")) && keyboard_check(ord("S"))) {
			//do nothing
		} else if (keyboard_check(ord("W"))) {
			dashing = true;
			direction = 90;
		} else if (keyboard_check(ord("S"))) {
			dashing = true;
			direction = 270;
		}
		if (keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
			//do nothing
		} else if (keyboard_check(ord("A"))) {
			dashing = true;
			if (direction == 90) direction += 45;
			else if (direction == 270) direction -= 45;
			else direction = 180;
		} else if (keyboard_check(ord("D"))) {
			dashing = true;
			if (direction == 90) direction -= 45;
			else if (direction == 270) direction += 45;
			else direction = 0;
		}
	}
}