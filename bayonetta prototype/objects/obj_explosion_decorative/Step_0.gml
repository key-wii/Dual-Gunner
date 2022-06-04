/// @description Collision Detection
/*if (place_meeting(x, y, obj_e_parent)) {
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			if (!shield && !invincible) {
				var enemy = id;
				with (other) {
					if (ds_list_find_index(enemiesHit, enemy) != -1) exit;
					ds_list_add(enemiesHit, enemy);
				}
				var ddir = point_direction(x, y, other.x, other.y);
				take_damage(0, ddir);
				//sound_machine(snd_hit_bull);
				ssSudden(3, 1, false, false);
			}
		}
	}
}*/

coll_destroy_bull_e();