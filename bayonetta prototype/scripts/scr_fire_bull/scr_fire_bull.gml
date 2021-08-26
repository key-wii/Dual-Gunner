function fire_bull(dddir, small) {
	var xx = lengthdir_x(sprite_width / 2 + 64, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 64, dddir);
	var bull = instance_create_layer(x + xx, y + yy, "Player", obj_bull);
	bull.direction = dddir;
	bull.image_angle = dddir;
	bull.speed = 18;
	if (small) {
		bull.sprite_index = spr_bull_small;
		bull.image_xscale = .9;
		bull.image_yscale = .9;
	}
	if (alarm_get(1) <= 6) with (bull) {
		pow = 10;
		alarm_set(0, 0);
		if (small) {
			image_xscale = 1;
			exit;
		} else {
			image_xscale = 1.5;
			image_yscale = 2.25;
		}
		alarm_set(3, 1);
	}
}