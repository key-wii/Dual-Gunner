/// @description Collision Detection
jump_move(move);

// Dash cancels block
if (dashInput_pressed) {
	image_xscale = 1;
	image_yscale = 1;
	cooldown_counter = cooldownCounterMax;
	with (obj_player_move) stop = false;
	gun.visible = true;
	move.arrow.visible = true;
	dashSkill();
}

var hyp = hyper;

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			if (room_speed > 50) {
				room_speed = 50;
				with (obj_controller) alarm_set(2, 1);
			}
			hp -= 1;
			if (hp > 0) exit;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			direction = direction + 180;
			image_angle = direction;
			speed = clamp(speed * 2, 24, sprite_width * 3);
			var deflectObj = obj_bull_deflected;
			switch(object_index) {
				case obj_bull_e_bounce: deflectObj = obj_bull_bounce_deflected; break;
			}
			instance_change(deflectObj, true);
			if (hyp) {
				pow = floor(pow * 1.25 * 10);
				pow /= 10;
				image_xscale *= 1.25;
				image_yscale *= 1.25;
			}
		}
	}
}

if (place_meeting(x, y, obj_bull_cannonball_e)) {
	var ddir = direction;
	with (obj_bull_cannonball_e) {
		if (place_meeting(x,y,other.id)) {
			if (hp == hpMax) {
				image_xscale = max_size;
				image_yscale = max_size;
				if (room_speed > 2) {
					room_speed = 2;
					with (obj_controller) alarm_set(2, 1);
				}
			}
			else if (room_speed > 50) {
				room_speed = 50;
				with (obj_controller) alarm_set(2, 1);
			}
			hp -= 1;
			with (other) {
				if (!big_deflect) {
					sound_machine(snd_counter1);
				}
				big_deflect = true;
				timer = 30;
			}
			if (hp > 0) exit;
			direction = direction + 180;
			image_angle = direction;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			room_speed = 60;
			if (hyp) {
				pow = floor(pow * 1.25 * 10);
				pow /= 10;
				image_xscale *= 1.25;
				image_yscale *= 1.25;
			}
		}
	}
}
