direction -= 24;
image_angle = direction - 65;

if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			knockbacked(3, kbDir);
		}
	}
}

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			x += lengthdir_x(5, ddir);
			y += lengthdir_y(5, ddir);
			direction = ddir;
			image_angle = direction;
			speed = clamp(speed * 2, 1, sprite_width / 2);
			/*instance_change(obj_bull_deflected, true);
			wrap = false;*/
		}
	}
}

move_wrap(true, true, -70);