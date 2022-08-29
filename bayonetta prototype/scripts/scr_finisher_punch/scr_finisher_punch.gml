function finisher_punch(dir, face, hits) {
	var ppow = .1 + .1 * hits;
	var ppowNext = .1 + .1 * hits + 1;
	if (enemyToFinish.hp <= ppow + ppowNext) {
		finisher_punch_last(dir, face, hits);
		exit;
	}
	
	var dir2 = dir + 90 * face;
	var xx = lengthdir_x(sprite_width / 1.5, dir2);
	var yy = lengthdir_y(sprite_width / 1.5, dir2);

	var punch = instance_create_layer(x + xx, y + yy, "Player", obj_finisher);
	punch.image_xscale = image_xscale * 3;
	punch.image_yscale = image_yscale * 3;
	with (punch) {
		image_angle = dir;
		image_yscale *= face;
		direction = dir2;
		speed = 1;
		pow = ppow;
		rotate = -8 * face;
		dir_face = face;
	}
}

function finisher_punch_last(dir, face, hits) {
	if (last_hit) exit;
	last_hit = true;
	alarm_set(3, 0);
	if (room_speed > 10) {
		room_speed = 10;
		with (obj_controller) alarm_set(2, 5);
	}
	instance_destroy(obj_finisher);
	
	var dir2 = dir + 90 * face;
	var xx = lengthdir_x(sprite_width / 1.5, dir2);
	var yy = lengthdir_y(sprite_width / 1.5, dir2);

	var punch = instance_create_layer(x + xx, y + yy, "Player", obj_finisher_last);
	punch.image_xscale = image_xscale * 5;
	punch.image_yscale = image_yscale * 5;
	with (punch) {
		image_angle = dir;
		image_yscale *= face;
		direction = dir2;
		speed = 1;
		pow = 100;
		rotate = -8 * face;
		dir_face = face;
	}
}