if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			if (shield || invincible) {
				
				with (other) instance_change(obj_bull_explode, true);
				exit;
			}
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
			if (object_get_parent(object_index) == obj_wall_nosplatter) {
				if (object_index == obj_mirror) {
					if (!timerAddedAlready) {
						if (image_alpha < 1) image_alpha += .3;
						if (image_alpha > 1) image_alpha = 1;
						timer = clamp(timer + 10, 0, timerMax);
						timerAddedAlready = true;
					}
				}
				/*else if (object_index == obj_boxer_trap) {
					other.wall_hits += 5;
				}*/
			} else {
				splatterWall(spr_splatter, .5);
				splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
				splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
			}
			if (object_index == obj_border) exit;
    
			with (other) {
				collide_wall();
				wall_hits++;
				if (wall_hits > wallHitMax) {
					instance_change(obj_bull_explode, true);
					exit;
				}
				bull_bounce();
				/*var ddir = point_direction(other.x, other.y, x, y);
				x += lengthdir_x(10, ddir);
				y += lengthdir_y(10, ddir);*/
				if (image_xscale > min_size && alarm_get(0) >= 0) image_xscale = min_size;
				if (image_yscale > min_size && alarm_get(0) >= 0) image_yscale = min_size;
			}
		}
	}
}

//coll_destroy_bull_e();