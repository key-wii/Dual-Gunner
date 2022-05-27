if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	if (hp > 0) {
		hp--;
		exit;
	}
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id)) {
			if (shield) {
				shield = false;
				audio_stop_sound(snd_counter2);
				sound_machine(snd_shield_break);
				dizzy_set(610, 1300 + irandom(359));
				//dizzy_set(310, 1300 + irandom(359));
				knockbacked(other.pow / 5, kbDir);
				ssSudden(4, 5, false, false);
				with (other) {
					speed = 0;
					instance_change(obj_bull_explode, true);
				}
				exit;
			}
			take_damage(floor(other.pow / 5), kbDir);
			var xx = lengthdir_x(5, direction);
			var yy = lengthdir_y(5, direction);
			splatterRadiusAt(x + xx, y + yy, 8, 16, 12);
		}
		sound_machine(snd_hit_bull);
		ssSudden(2, 5, false, false);
		with (other) {
			speed = 0;
			instance_change(obj_bull_explode, true);
		}
	}
}

/*if (place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWall(spr_splatter, .5);
			splatterWallAt(spr_splatter, .05 + random(.025), x + random_range(-35, 35), y + random_range(-35, 35));
			splatterWallAt(spr_splatter, .05 + random(.025), x + random_range(-35, 35), y + random_range(-35, 35));
    
			with (other) instance_change(obj_bull_explode, true);
		}
	}
}*/

if (wrap) move_wrap(true, true, -70);