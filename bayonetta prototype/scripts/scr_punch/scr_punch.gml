function punch(dir, face, ppower, held) {
	var dir2 = dir + 45 * face;
	var xx = lengthdir_x(sprite_width / 2, dir2);
	var yy = lengthdir_y(sprite_width / 2, dir2);

	var fist = instance_create_layer(x + xx, y + yy, "Player", obj_punch);
	fist.image_xscale = image_xscale * 3;
	fist.image_yscale = image_yscale * 3;
	with (fist) {
		image_angle = dir;
		image_yscale *= face;
		if (held) {
			image_xscale *= 1.25;
			image_yscale *= 1.25;
		}
		direction = dir;
		speed = 1;
		pow = ppower;
		rotate = -14 * face;
		dir_face = face;
		owner = other.id;
	}
}