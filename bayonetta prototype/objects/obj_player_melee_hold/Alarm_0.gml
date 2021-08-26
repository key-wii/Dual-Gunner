//if (mouse_check_button(mb_left) || mouse_check_button(mb_right)) {
	var xx = lengthdir_x(sprite_width / 2 + 64, direction);
	var yy = lengthdir_y(sprite_width / 2 + 64, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Player", obj_bull);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	sound_machine(snd_shoot);
	var ddir = direction + 180;
	x_adjust = lengthdir_x(5, ddir);
	y_adjust = lengthdir_y(5, ddir);
	with (move) { 
		var xx = lengthdir_x(1, ddir);
		var yy = lengthdir_y(1, ddir);
		if (!place_meeting(x + xx, y, obj_wall)) x += xx;
		if (!place_meeting(x, y + yy, obj_wall)) y += yy;
	}
	
	//Partner fires bullets
	/*if (instance_exists(partner)) with (partner) {
		var xx = lengthdir_x(sprite_width / 16, direction);
		var yy = lengthdir_y(sprite_width / 16, direction);
		var bull = instance_create_layer(x + xx, y + yy, "Player", obj_bull_partner);
		bull.direction = direction;
		bull.image_angle = direction;
		bull.speed = 10;
		bull.image_xscale = .75;
		bull.image_yscale = .5;
	}*/
//}
alarm_set(0, 6);