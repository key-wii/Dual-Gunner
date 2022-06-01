/// @description 
if (hold) {
	var moreMirrors = ds_list_size(mirrors) > 1;
	with (move) {
		direction += 180;
		if (moreMirrors) can_move = false;
	}
	direction -= 75 * dir_face;
	
	if (ds_list_size(mirrors) > 0) {
		if (nextDelay <= 0) {
			var ddir = dir_orig;
			with (mirrors[| 0]) {
				var ddir = direction - 90;
				if (flipped) ddir = direction + 90;
				var xx = lengthdir_x(sprite_height / 2, ddir);
				var yy = lengthdir_y(sprite_height / 2, ddir);
				instance_create_layer(x + xx, y + yy, "Bull", obj_explosion);
				instance_destroy();
			}
			if (ds_list_size(mirrors) == 0) {
				with (move) {
					can_move = true;
					dashSpd = 19;
				}
				instance_change(obj_player, false);
			} else {
				timer += 8;
			}
			nextDelay = nextDelayMax;
		}
		else nextDelay--;
	}
}
alarm_set(0, 1);