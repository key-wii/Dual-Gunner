function fire_bull(dddir, small) {
	var xx = lengthdir_x(sprite_width / 2 + 0, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 0, dddir);
	var bull = instance_create_layer(x + xx, y + yy, "Bull", obj_bull);
	bull.direction = dddir;
	bull.image_angle = dddir;
	bull.speed = 18;
	bull.dir_face = dir_face;
	drop_casing(dddir, false);
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
				bull.image_xscale = 2.2;
				bull.image_yscale = 2.2;
				bull.min_size = 1.1;
				break;
			case 3: 
				bull.pow = 1.2;
				bull.image_xscale = 2.4;
				bull.image_yscale = 2.4;
				bull.min_size = 1.2;
				break;
			case 4: 
				bull.pow = 1.5;
				bull.image_xscale = 2.8;
				bull.image_yscale = 2.8;
				bull.min_size = 1.4;
				break;
			case 5: 
				bull.pow = 1.85;
				bull.image_xscale = 3.1;
				bull.image_yscale = 3.1;
				bull.min_size = 1.65;
				break;
			case 6: 
				bull.pow = 2.5;
				bull.image_xscale = 3.5;
				bull.image_yscale = 3.5;
				bull.min_size = 2;
				break;
			/*case 7: 
				bull.pow = 1.5;
				bull.image_xscale = 4;
				bull.image_yscale = 4;
				bull.min_size = 2.2;
				break;
			case 8: 
				bull.pow = 1.5;
				bull.image_xscale = 4;
				bull.image_yscale = 4;
				bull.min_size = 2.2;
				break;*/
		}
	}
	if (alarm_get(1) <= 6) with (bull) {
		//last bullet always does flat 15 damage
		pow = 15;
		drop_casing(dddir, true);
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

function drop_casing(dddir, clip) {
	dddir += 180;
	dddir += irandom_range(-12, 12);
	var xx = lengthdir_x(sprite_width / 2 + 0, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 0, dddir);
	var casing = instance_create_layer(x + xx, y + yy, "Floor", obj_brass);
	casing.direction = dddir;
	with (casing) {
		image_angle = irandom(359);
		speed = 10 + irandom(70);
		if (irandom(4) == 0) speed += 20;
		if (clip) {
			sprite_index = spr_clip;
			exit;
		}
		image_xscale = .7;
		image_yscale = .7;
	}
}