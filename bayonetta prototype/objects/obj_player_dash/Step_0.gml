jump_move(move);

timer--;
if (timer == 0) {
	with (move) {
		dashing = false;
		can_move = false;
	}
}
else if (timer <= -5) {
	var mirror = instance_create_layer(x_orig, y_orig, "Floor", obj_mirror);
	mirror.direction = dir_orig + 90;
	mirror.x1 = x_orig;
	mirror.y1 = y_orig;
	mirror.x2 = x;
	mirror.y2 = y;
	with (mirror) {
		image_angle = direction;
		if (direction >= 180) direction -= 180;
		var ddis = point_distance(x1, y1, x2, y2) - 30;
		var ddir = point_distance(x1, y1, x2, y2);
		image_yscale = lengthdir_y(ddis, ddir) / 20;
		if (image_yscale < 1) instance_destroy();
	}
	with (move) can_move = true;
	cooldown_dash = cooldownDashMax;
	instance_change(obj_player, false);
}
else if (timer < 0) direction += 5 * dir_face;

else direction += (50 - timer) * dir_face;

image_angle = direction;