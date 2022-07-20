if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) and (ds_list_find_index(other.enemiesHit,id) == -1)) {
			if (!shield && !invincible) {
				if (room_speed > 45) {
					room_speed = 45;
					with (obj_controller) alarm_set(2, 1);
				}
				
				sound_machine(snd_punch);
				knockbacked(1, kbDir);
				take_damage3(clamp(other.pow / 2, 12, 12) / (move.weight * 3), kbDir + 125 * other.dir_face);
				ds_list_add(other.enemiesHit, id);
				//sound_machine(snd_hit_wave);
				ssSteady(clamp(2 * other.pow, 1, 15), 8, false, false);
				
				var xx = lengthdir_x(sprite_width, kbDir + 30 * other.dir_face);
				var yy = lengthdir_y(sprite_width, kbDir + 30 * other.dir_face);
				var expl = instance_create_layer(x + xx, y + yy, "Bull", obj_explosion_decorative);
				expl.image_speed *= 2;
			}
		}
	}
}

coll_destroy_bull_e();