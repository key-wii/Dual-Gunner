if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) and (ds_list_find_index(other.enemiesHit,id) == -1)) {
			if (!shield && !invincible) {
				var kBack = other.pow * 2;
				if (other.hyper) {
					kBack /= 2;
					kbDir = point_direction(x, y, other.x, other.y);
				}
				take_damage(kBack, kbDir);
				ds_list_add(other.enemiesHit, id);
				sound_machine(snd_hit_wave);
				ssSteady(clamp(2 * other.pow, 1, 15), 8, false, false);
				/*if (other.pow > other.default_pow) splatter(20, 34);
				else splatter(6, 24);*/
				if (other.pow > other.default_pow) splatterBig(48, 48, .15);
				else splatterBig(34, 34, .1);
			}
		}
	}
}

splatterCount++;
if (pow > default_pow && splatterCount mod 2 == 0) splatter(1, 1);
else if (splatterCount mod 3 == 0) splatter(1, 1);

if (place_meeting(x, y, obj_wall)) {
	if (other.pow > other.default_pow) var size = 2.25;
	else var size = 1.25;
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			if (object_get_parent(object_index) != obj_wall_nosplatter)
				splatterWallAt(spr_splatter, size, other.x, other.y);
		}
	}
}

//if (!global.unlockedDeflect && pow > default_pow) coll_destroy_bull_e();

//move_wrap(true, true, -50);