function finisher_punch(dir, face, hits) {
	var dir2 = dir + 90 * face;
	var xx = lengthdir_x(sprite_width / 1.5, dir2);
	var yy = lengthdir_y(sprite_width / 1.5, dir2);

	var punch = instance_create_layer(x + xx, y + yy, "Player", obj_punch);
	punch.image_xscale = image_xscale * 3;
	punch.image_yscale = image_yscale * 3;
	with (punch) {
		image_angle = dir;
		image_yscale *= face;
		direction = dir2;
		speed = 1;
		pow = .1 + .1 * hits;
		rotate = -8 * face;
		dir_face = face;
	}
}