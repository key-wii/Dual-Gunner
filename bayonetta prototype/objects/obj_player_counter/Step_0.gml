/// @description Collision Detection
jump_move(move);

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			room_speed = 50;
			with (obj_controller) alarm_set(2, 1);
			hp -= 1;
			if (hp > 0) exit;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			direction = direction + 180;
			image_angle = direction;
			speed = clamp(speed * 2, 24, sprite_width * 3);
			instance_change(obj_bull_deflected, true);
			wrap = false;
		}
	}
}

if (place_meeting(x, y, obj_bull_cannonball_e)) {
	var ddir = direction;
	with (obj_bull_cannonball_e) {
		if (place_meeting(x,y,other.id)) {
			if (hp == hpMax) room_speed = 2;
			else room_speed = 50;
			with (obj_controller) alarm_set(2, 1);
			hp -= 1;
			with (other) {
				if (!big_deflect) {
					sound_machine(snd_counter1);
					//sound_machine(snd_counter2);
				}
				big_deflect = true;
				timer = 30;
			}
			if (hp > 0) exit;
			direction = direction + 180;
			image_angle = direction
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			wrap = true;
			room_speed = 60;
		}
	}
}
