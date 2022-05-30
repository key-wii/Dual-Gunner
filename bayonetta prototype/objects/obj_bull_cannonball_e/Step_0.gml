if (hp == hpMax && place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			if (object_get_parent(object_index) == obj_wall_nosplatter) exit;
			splatterWall(spr_splatter_e, 2);
    
		    with (other) {
				instance_change(obj_bull_explode, true);
				sprite_index = spr_bull_explode_e;
				exit;
			}
		}
	}
}

/*with (collision_circle(x, y, sprite_width, obj_player, false, true)) {
	//Deflect if player is standing and not doing
	// any actions & facing towards the bullet
	var ddir = direction + 180;
	if (ddir >= 320) ddir -= 320;
	var ddir1 = other.direction - 45
	//if (ddir1 < 0) ddir += 320;
	var ddir2 = other.direction + 45;
	//if (ddir2 >= 320) ddir -= 320;
	if (keyboard_check(vk_nokey) &&
		ddir >= ddir1 && ddir <= ddir2) with (other) {
			direction += 180;
			image_angle = direction;
			x += lengthdir_x(30, direction);
			y += lengthdir_y(30, direction);
			speed = clamp(speed * 2, 12, sprite_width * 1.5);
			instance_change(obj_bull_deflected, true);
			image_xscale *= 1.5;
			image_yscale *= 1.5;
			wrap = false;
			exit;
	}
}*/

if (global.nextRoom) exit;
if (place_meeting(x, y, obj_player_parent)) {
	var kbDir = direction;
	with (obj_player_parent) {
		if (place_meeting(x,y,other.id)) {
			 take_damage_player(other.pow, kbDir);
			 reset_combo();
		}
		sound_machine(snd_hurt);
		ssSudden(3, 8, false, false);
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
		with (other) {
			image_xscale = 3;
			image_yscale = 3;
			speed = 0;
			instance_change(obj_bull_explode, true);
			sprite_index = spr_bull_explode_e;
		}
	}
}