/// @description Collision Detection
if (wiggle == 0 || awoke) event_inherited();

if (!lethal || global.nextRoom) exit;
if (place_meeting(x, y, obj_mirror)) {
	with (obj_mirror) {
		if (place_meeting(x,y,other.id)) {
			room_speed = 20;
			with (obj_controller) alarm_set(2, 1);
			sound_machine(snd_shield_break);
			instance_destroy();
		}
	}
}

if (alreadyHit) exit;
if (place_meeting(x, y, obj_player_counter)) {
	var kbDir = direction;
	with (obj_player_counter) {
		if (place_meeting(x,y,other.id)) {
			take_damage_player(other.pow, kbDir);
			reset_combo();
			alarm_set(3, 10);
			
			other.alreadyHit = true;
			sound_machine(snd_hurt);
			ssSudden(8, 8, false, false);
			//knockbacked_player3(sprite_width, kbDir);
			room_speed = 4;
			with (obj_controller) alarm_set(2, 1);
			x_adjust = lengthdir_x(20, kbDir);
			y_adjust = lengthdir_y(20, kbDir);
			var xx = lengthdir_x(40, kbDir);
			var yy = lengthdir_y(40, kbDir);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
			exit;
		}
	}
}

if (place_meeting(x, y, obj_player_parent)) {
	var kbDir = direction;
	with (obj_player_parent) {
		if (place_meeting(x,y,other.id)) {
			take_damage_player(other.pow, kbDir);
			reset_combo();
			
			other.alreadyHit = true;
			sound_machine(snd_hurt);
			ssSudden(8, 8, false, false);
			knockbacked_player3(sprite_width, kbDir);
			room_speed = 4;
			with (obj_controller) alarm_set(2, 1);
			x_adjust = lengthdir_x(20, kbDir);
			y_adjust = lengthdir_y(20, kbDir);
			var xx = lengthdir_x(40, kbDir);
			var yy = lengthdir_y(40, kbDir);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
			splatterRadiusAt_e(x + xx, y + yy, 38, 100, 42);
		}
	}
}