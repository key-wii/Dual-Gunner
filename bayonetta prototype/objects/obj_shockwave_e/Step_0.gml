if (place_meeting(x, y, obj_player_parent)) {
	hp--;
	if (hp > 0 || hitPlayer) exit;
	hitPlayer = true;
	var kbDir = direction;
	with (obj_player_parent) {
		take_damage_player(other.pow, kbDir);
		reset_combo();
		sound_machine(snd_hurt);
		sound_machine(snd_hit_wave);
		ssSteady(clamp(2 * other.pow, 1, 15), 8, false, false);
		knockbacked_player3(sprite_width, kbDir);
		room_speed = 10;
		with (obj_controller) alarm_set(2, 2);
		x_adjust = lengthdir_x(10, kbDir);
		y_adjust = lengthdir_y(10, kbDir);
		var xx = lengthdir_x(40, kbDir);
		var yy = lengthdir_y(40, kbDir);
		splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
		splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
		splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
	}
}

splatterCount++;
if (pow > default_pow && splatterCount mod 2 == 0) splatter_e(1, 1);
else if (splatterCount mod 3 == 0) splatter_e(1, 1);

/*if (place_meeting(x, y, obj_wall)) {
	if (other.pow > other.default_pow) var size = 2.25;
	else var size = 1.25;
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			if (object_get_parent(object_index) != obj_wall_nosplatter)
				splatterWallAt(spr_splatter, size, other.x, other.y);
		}
	}
}*/

//if (!global.unlockedDeflect && pow > default_pow) coll_destroy_bull_e();

//move_wrap(true, true, -50);