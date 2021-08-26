if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			take_damage(other.pow, kbDir);
			var xx = lengthdir_x(5, direction);
			var yy = lengthdir_y(5, direction);
			splatterRadiusAt(x + xx, y + yy, 8, 16, 12);
			sound_machine(snd_hit_bull);
			ssSudden(1, 1, false, false);
			with (other) {
				image_xscale = 2;
				image_yscale = 2;
				speed = 0;
				instance_change(obj_bull_explode, true);
			}
		}
	}
}


if (place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWall(spr_splatter, .5);
			splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
			splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
    
			with (other) instance_change(obj_bull_explode, true);
		}
	}
}

coll_destroy_bull_e();

if (wrap) move_wrap(true, true, -70);