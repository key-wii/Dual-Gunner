if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			if (shield) {
				
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
			splatterWall(spr_splatter, .5);
			splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
			splatterWallAt(spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
    
			with (other) {
				collide_wall();
				wall_hits++;
				if (wall_hits > 20) {
					instance_change(obj_bull_explode, true);
					exit;
				}
				//bounce off wall
				turn(60);
				/*var enemy = instance_nearest(x, y, obj_e_parent);
				if (instance_exists(enemy)) {
					turn(60);
					var ddis = point_distance(x, y, enemy.x, enemy.y);
					var max_turn = 45;
					if (ddis < 100) {
						//aim for nearest enemy
						var last_dir = direction;
						direction = point_direction(x, y, enemy.x, enemy.y);
						var diff = direction - last_dir;
						var diff2 = last_dir - direction;
						if (abs(diff) > max_turn && abs(diff2) > max_turn)
							if (diff > max_turn) direction = last_dir + max_turn;
							else if (diff < -max_turn) direction = last_dir - max_turn;
					}
				} else {
					turn(60);
				}*/
				image_angle = direction;
				if (image_xscale > 1 && alarm_get(0) >= 0) image_xscale = 1;
				if (image_yscale > 1 && alarm_get(0) >= 0) image_yscale = 1;
			}
		}
	}
}

//coll_destroy_bull_e();

if (wrap) move_wrap(true, true, -70);