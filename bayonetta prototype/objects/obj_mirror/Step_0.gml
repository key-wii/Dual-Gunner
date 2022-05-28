/// @description Collision Detection		
if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 1;
			if (hp > 0) exit;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			/*if (angle_difference(direction, ddir) > angle_difference(ddir, direction))
				direction = ddir + 180;		//STILL BUGGY FOR DIAGONALS
			else direction = ddir + 180;	//STILL BUGGY FOR DIAGONALS	*/
			direction += 180;
			image_angle = direction;
			speed = clamp(speed * 2, 10, sprite_width * 1.5);
			instance_change(obj_bull_deflected, true);
			wrap = false;
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
			/*var _ad = angle_difference(direction, ddir);
			if (angle_difference(direction, ddir) > angle_difference(ddir, direction))
				direction = ddir + 180;		//STILL BUGGY FOR DIAGONALS
			else direction = ddir + 180;	//STILL BUGGY FOR DIAGONALS*/
			var _ad = direction - ddir;
			//STILL BUGGY, Most angles are good except vertical lines to the side, which bounces vertically instead of horizontally
				 if (_ad < 22.5 && _ad >= -22.5) direction = 0;
			else if (_ad < 67.5 && _ad >= 22.5) direction = 45;
			else if (_ad < 112.5 && _ad >= 67.5) direction = 90;
			else if (_ad < 157.5 && _ad >= 112.5) direction = 135;
			else if (_ad < 202.5 && _ad >= 157.5) direction = 180;
			else if (_ad < 247.5 && _ad >= 202.5) direction = 225;
			else if (_ad < 292.5 && _ad >= 247.5) direction = 270;
			else if (_ad < 337.5 && _ad >= 292.5) direction = 315;
			direction += 270;
			show_debug_message("ANGLE DIFFERENCE: " + string(_ad));
			//STILL BUGGY ABOVE
			//direction += 180; //Simple is best? Except certain angles look awkward and it's mechanically uninteresting
			image_angle = direction;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			wrap = true;
			room_speed = 60;
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