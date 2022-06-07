function wicked_weave(dir) {
	sound_machine(snd_throwWave);
	var xx = lengthdir_x(sprite_width / 2, dir);
	var yy = lengthdir_y(sprite_width / 2, dir);
	var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
	with (wave) {
		direction = dir;
		image_angle = direction;
		speed = 20; //14?
		pow = clamp(pow + (other.combo_length - 3), 0, 1000);
	}
	if (hyper) with (wave) {
		pow = floor(pow * 1.25 * 10);
		pow /= 10;
		image_xscale *= 1.25;
		image_yscale *= 1.25;
	}
}

function wicked_weave_big(dir) {
	sound_machine(snd_throwWaveBig);
	var xx = lengthdir_x(sprite_width / 4, dir);
	var yy = lengthdir_y(sprite_width / 4, dir);
	var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
	with (wave) {
		direction = dir;
		image_angle = direction;
		image_xscale += .5;
		image_yscale += .5;
		speed = 22;
		pow = clamp(pow + 4 + (other.combo_length - 3) * 2, 0, 1000);
	}
	if (hyper) with (wave) {
		pow = floor(pow * 1.25 * 10);
		pow /= 10;
		image_xscale *= 1.25;
		image_yscale *= 1.25;
	}
}