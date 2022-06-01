/// @description Collision Detection
if (place_meeting(x, y, obj_e_parent)) {
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			if (!shield && !invincible) {
				var enemy = id;
				with (other) {
					if (ds_list_find_index(enemiesHit, enemy) != -1) exit;
					ds_list_add(enemiesHit, enemy);
				}
				var ddir = point_direction(x, y, other.x, other.y);
				take_damage(other.pow, ddir);
				var xx = lengthdir_x(5, ddir);
				var yy = lengthdir_y(5, ddir);
				splatterRadiusAt(x + xx, y + yy, 8, 16, 12);
				//sound_machine(snd_hit_bull);
				ssSudden(3, 1, false, false);
			}
		}
	}
}