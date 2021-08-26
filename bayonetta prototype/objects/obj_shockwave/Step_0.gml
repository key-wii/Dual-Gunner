if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) and (ds_list_find_index(other.enemiesHit,id) == -1)) {
			take_damage(other.pow * 2, kbDir);
			ds_list_add(other.enemiesHit, id);
			sound_machine(snd_hit_wave);
			ssSteady(2 * other.pow, 8, false, false);
			/*if (other.pow > 3) splatter(20, 34);
			else splatter(6, 24);*/
			if (other.pow > 3) splatterBig(48, 48, .15);
			else splatterBig(34, 34, .1);
		}
	}
}

splatterCount++;
if (pow > 3 && splatterCount mod 2 == 0) splatter(1, 1);
else if (splatterCount mod 3 == 0) splatter(1, 1);

if (place_meeting(x, y, obj_wall)) {
	if (other.pow > 3) var size = 2.25;
	else var size = 1.25;
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWallAt(spr_splatter, size, other.x, other.y);
		}
	}
}

coll_destroy_bull_e();

move_wrap(true, true, -50);