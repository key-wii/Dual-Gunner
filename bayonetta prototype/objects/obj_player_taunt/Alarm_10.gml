/// @description Destroy Mirrors

if (ds_list_size(mirrors) > 0) {
	//with (move) can_move = false;
	if (nextDelay <= 0) {
		var ddir = dir_orig;
		with (mirrors[| 0]) {
			var ddir = direction - 90;
			if (flipped) ddir = direction + 90;
			var xx = lengthdir_x(sprite_height / 2, ddir);
			var yy = lengthdir_y(sprite_height / 2, ddir);
			var expl = instance_create_layer(x + xx, y + yy, "Bull", obj_explosion);
			expl.direction = image_angle + 90;
			expl.image_angle = expl.direction;
			if (hyper) with (expl) {
				pow = floor(pow * 1.25 * 10);
				pow /= 10;
				image_xscale *= 1.25;
				image_yscale *= 1.25;
			}
			instance_destroy();
		}
		nextDelay = nextDelayMax;
	}
	else nextDelay--;
	
	alarm_set(10, 1);
}