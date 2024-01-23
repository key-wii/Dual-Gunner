if (!collided_this_frame && instance_exists(owner.id) && owner.id != id) {
	var ddir = point_direction(x, y, other.x, other.y);
	var enemy = other.owner;
	if (kBack) with (owner.id) {
		actual_pow = pow;
		pow = 6;
		var ppow = enemy.pow;
		with (enemy) take_damage(clamp(other.pow * 6, 0, 16), ddir);
		other.pow = pow;
		take_damage(clamp(ppow * 6, 0, 16), ddir + 180);
		pow = actual_pow;
	}
	collided_this_frame = true;
	other.collided_this_frame = true;
}

if (place_meeting(x, y, other)) {
	for (var i = 0; i < 1000; ++i) {
		if (!place_meeting(x + i, y, other)) {
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, other)) {
			x -= i;
			break;
		}
		if (!place_meeting(x, y - i, other)) {
			y -= i;
			break;
		}
		if (!place_meeting(x, y + i, other)) {
			y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, other)) {
			x += i;
			y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, other)) {
			x -= i;
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, other)) {
			x += i;
			y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, other)) {
			x -= i;
			y += i;
			break;
		}
	}
}