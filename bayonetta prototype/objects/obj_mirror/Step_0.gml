/// @description Collision Detection		
var hyp = hyper;

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 1;
			if (hp > 0) exit;
			sound_machine(snd_mirror);
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			var _ad = direction - ddir;
			direction = (ddir + 180) - _ad;
			image_angle = direction;
			speed = clamp(speed * 2, 10, sprite_width * 1.5);
			instance_change(obj_bull_deflected, true);
			wrap = false;
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
				room_speed = 12;
			}
			else room_speed = 50;
			with (obj_controller) alarm_set(2, 1);
			hp -= 2;
			with (other) {
				if (!big_deflect) {
					sound_machine(snd_mirror);
				}
				big_deflect = true;
				if (timer < 30) timer = 30;
			}
			if (hp > 0) exit;
			var _ad = direction - ddir;
			direction = (ddir + 180) - _ad;
			image_angle = direction;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			wrap = true;
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

/*if (place_meeting(x, y, obj_bull_cannonball_e)) {
	var ddir = direction;
	with (obj_bull_cannonball_e) {
		if (place_meeting(x,y,other.id)) {
			room_speed = 12;
			with (obj_controller) alarm_set(2, 1);
			hp -= 2;
			if (hp > 0) exit;
			direction = ddir;
			image_angle = direction
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			wrap = true;
			room_speed = 60;
		}
	}
}*/