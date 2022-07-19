function fire_bull_e(_snd, _dir, _type, _accuracy_variation, _accuracy_spread, _spd, _xscale, _yscale) {
	if (_snd != -1) sound_machine(_snd);
	var xx = lengthdir_x(sprite_width / 2, _dir);
	var yy = lengthdir_y(sprite_width / 2, _dir);
	var bull = instance_create_layer(x + xx, y + yy, "Bull_e", _type);
	var ran = irandom_range(-_accuracy_variation, _accuracy_variation);
	bull.direction = _dir + ran * _accuracy_spread;
	bull.image_angle = bull.direction;
	bull.speed = _spd;
	bull.image_xscale = _xscale;
	bull.image_yscale = _yscale;
}