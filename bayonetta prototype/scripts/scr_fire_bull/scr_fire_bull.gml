function fire_bull(dddir, small) {
	var xx = lengthdir_x(sprite_width / 2 + 0, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 0, dddir);
	var bull = instance_create_layer(x + xx, y + yy, "Player", obj_bull);
	bull.direction = dddir;
	bull.image_angle = dddir;
	bull.speed = 18;
	if (small) {
		bull.sprite_index = spr_bull_small;
		bull.image_xscale = .9;
		bull.image_yscale = .9;
	} else {
		var combo = ds_list_size(combo_now);
		switch (combo) {
			//bullet damage scales with combo length
			case 2: 
				bull.pow = 1.1;
				bull.image_xscale = 2.3;
				bull.image_yscale = 2.3;
				bull.min_size = 1.1;
				break;
			case 3: 
				bull.pow = 1.2;
				bull.image_xscale = 2.6;
				bull.image_yscale = 2.6;
				bull.min_size = 1.3;
				break;
			case 4: 
				bull.pow = 1.3;
				bull.image_xscale = 2.9;
				bull.image_yscale = 2.9;
				bull.min_size = 1.5;
				break;
			case 5: 
				bull.pow = 1.4;
				bull.image_xscale = 3.2;
				bull.image_yscale = 3.2;
				bull.min_size = 1.7;
				break;
			case 6: 
				bull.pow = 1.5;
				bull.image_xscale = 4;
				bull.image_yscale = 4;
				bull.min_size = 2.2;
				break;
		}
	}
	if (alarm_get(1) <= 6) with (bull) {
		//last bullet always does flat 15 damage
		pow = 15;
		alarm_set(0, 0);
		if (small) {
			image_xscale = 1;
			exit;
		} else {
			image_xscale = min_size + .5;
			image_yscale = 2.25;
		}
		alarm_set(3, 1);
	}
}