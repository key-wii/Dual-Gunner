/// @description 
if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 1;
			if (hp > 0) exit;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			if (angle_difference(direction, ddir) > angle_difference(ddir, direction))
				direction = ddir + 180;		//STILL BUGGY FOR DIAGONALS
			else direction = ddir + 180;	//STILL BUGGY FOR DIAGONALS	
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
			room_speed = 12;
			with (obj_controller) alarm_set(2, 1);
			hp -= 2;
			if (hp > 0) exit;
			if (angle_difference(direction, ddir) > angle_difference(ddir, direction))
				direction = ddir + 180;		//STILL BUGGY FOR DIAGONALS
			else direction = ddir + 180;	//STILL BUGGY FOR DIAGONALS
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