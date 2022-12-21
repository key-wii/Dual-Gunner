if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) and (ds_list_find_index(other.enemiesHit,id) == -1)) {
			if (!shield && !invincible) {
				room_speed = 8;
				with (obj_controller) alarm_set(2, 90);
				
				sound_machine(snd_punch);
				sound_machine(snd_punch2);
				knockbacked(1, kbDir);
				take_damage3(clamp(other.pow / 2, 12, 12) / (move.weight * 3), kbDir + 125 * other.dir_face);
				ds_list_add(other.enemiesHit, id);
				//sound_machine(snd_hit_wave);
				ssSteady(clamp(2 * other.pow, 1, 15), 8, false, false);
				
				var xx = lengthdir_x(sprite_width, kbDir + 30 * other.dir_face);
				var yy = lengthdir_y(sprite_width, kbDir + 30 * other.dir_face);
				var expl = instance_create_layer(x + xx, y + yy, "Bull", obj_explosion_punch);
				with (expl) {
					image_speed *= 2;
					image_xscale *= 2;
					image_yscale *= 2;
					direction = kbDir;
					image_angle = direction;
				}
			}
		}
	}
}

if (place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			if (object_get_parent(object_index) == obj_wall_nosplatter) {
				if (destructible) {
					explode_nonlethal(point_direction(other.x, other.y, x, y));
					instance_destroy();
				}
				else exit;
			}
			else {
				splatterWall(spr_splatter, .5);
				splatterWallAt(spr_splatter, .05 + random(.025), x + random_range(-35, 35), y + random_range(-35, 35));
				splatterWallAt(spr_splatter, .05 + random(.025), x + random_range(-35, 35), y + random_range(-35, 35));
			}
		}
	}
}

//coll_destroy_bull_e();