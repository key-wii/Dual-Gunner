if (last_hit && hold) {
	// Big Wicked Weave
	var xx = lengthdir_x(sprite_width / 4, direction);
	var yy = lengthdir_y(sprite_width / 4, direction);
	var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
	wave.direction = direction;
	wave.image_angle = wave.direction;
	wave.image_xscale += .5;
	wave.image_yscale += .5;
	wave.speed = 22;
	wave.pow += 4;
}

//alarm_set(0, 0);
last_shot = true;
after_melee();