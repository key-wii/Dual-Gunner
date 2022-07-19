function fire_bull_e(snd, bull, accuracy_variation, accuracy_spread, spd, xscale, yscale) {
	sound_machine(snd);
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Bull_e", bull);
	var ran = irandom_range(-accuracy_variation, accuracy_variation);
	bull.direction = direction + ran * accuracy_spread;
	bull.image_angle = bull.direction;
	bull.speed = spd;
	bull.image_xscale = xscale;
	bull.image_yscale = yscale;
}