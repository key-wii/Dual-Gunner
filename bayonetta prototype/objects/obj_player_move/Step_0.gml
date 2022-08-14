if (global.cutscene) exit;

xMove = 0;
yMove = 0;
if (recoil > 0) {
	if (recoil == 1) {
		var xx = lengthdir_x(2, direction);
		var yy = lengthdir_y(2, direction);
		if (!place_meeting(x + xx, y, obj_wall)) x += xx;
		if (!place_meeting(x, y + yy, obj_wall)) y += yy;
	}
	else {
		var xx = lengthdir_x(-recoil * 8, direction);
		var yy = lengthdir_y(-recoil * 8, direction);
		if (!place_meeting(x + xx, y, obj_wall)) x += xx;
		if (!place_meeting(x, y + yy, obj_wall)) y += yy;
	}
	//move_wrap(true, true, 30);
	
	recoil -= 1;
	//if (recoil == 0) with (owner) dash();
	exit;
}

if (dashing && can_move) {
	var xx = lengthdir_x(dashSpd, direction);
	var yy = lengthdir_y(dashSpd, direction);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
	dash_tick++;
	if (dash_tick >= 5 && dash_dir_change < 2) dash_mid();
	if (dash_tick == dashTickMax) {
		with (owner) {
			point_mouse();
			if (instance_exists(gun)) gun.dir_line = direction;
		}
		dashing = false;
		dash_tick = 0;
		dash_dir_change = 0;
	}
	move_wrap(true, true, 30);
	
	if (dash_tick mod 3 == 0) {
		part_type_direction(global.partDash, direction, direction, 0, .1);
		part_particles_create(global.partSystem, x, y, global.partDash, 1);
	}
	exit;
}

var lInput = keyboard_check(ord("A")) ||
	gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) <= -.5 ||
	gamepad_button_check(4, gp_padl) || gamepad_axis_value(4, gp_axislh) <= -.5;
var rInput = keyboard_check(ord("D")) ||
	gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) >= .5 ||
	gamepad_button_check(4, gp_padr) || gamepad_axis_value(4, gp_axislh) >= .5;
var dInput = keyboard_check(ord("S")) ||
	gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) >= .5 ||
	gamepad_button_check(4, gp_padd) || gamepad_axis_value(4, gp_axislv) >= .5;
var uInput = keyboard_check(ord("W")) ||
	gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) <= -.5 ||
	gamepad_button_check(4, gp_padu) || gamepad_axis_value(4, gp_axislv) <= -.5;
if (uInput && lInput && dInput ||
	uInput && lInput && rInput ||
	lInput && dInput && rInput ||
	lInput && dInput && rInput ||
	uInput && lInput && dInput
	&& rInput) {
		too_many_keys = true;
} else {
	too_many_keys = false;
}
if (uInput && dInput ||
	lInput && rInput) {
		opposing_keys = true;
} else {
	opposing_keys = false;
}
if (stop) opposing_keys = true;

if (lInput && !too_many_keys && !opposing_keys && !place_meeting(x - topSpeed, y, obj_wall)) {
	//burst
	if (can_move && just_moved && last_Hdir = Hdir.right && !touching_wall && !place_meeting(x - burstSpeed, y, obj_wall)) {
			xMove -= -burstSpeed;
			moving = true; burst = true;
			last_Hdir = Hdir.left;
			just_stopped = false;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move) {
		xMove -= topSpeed;
		moving = true;
		just_moved = true;
		just_stopped = false;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Hdir = Hdir.left;
		alarm_set(4, 20);
	} 
}
if (rInput && !too_many_keys && !opposing_keys && !place_meeting(x + topSpeed, y, obj_wall)) {
	//burst
	if (can_move && just_moved && last_Hdir = Hdir.left && !touching_wall && !place_meeting(x + burstSpeed, y, obj_wall)) {
			xMove += burstSpeed;
			moving = true; burst = true;
			last_Hdir = Hdir.right;
			just_stopped = false;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move) {
		xMove += topSpeed;
		moving = true;
		just_moved = true;
		just_stopped = false;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Hdir = Hdir.right;
		alarm_set(4, 20);
	}
}
if (dInput && !too_many_keys && !opposing_keys && !place_meeting(x, y + topSpeed, obj_wall)) {
	//burst
	if (can_move && just_moved && last_Vdir = Vdir.up && !touching_wall && !place_meeting(x, y + burstSpeed, obj_wall)) {
			yMove += burstSpeed;
			moving = true; burst = true;
			last_Vdir = Vdir.down;
			just_stopped = false;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move) {
		yMove += topSpeed;
		moving = true;
		just_moved = true;
		just_stopped = false;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Vdir = Vdir.down;
		alarm_set(4, 20);
	} 
}
if (uInput && !too_many_keys && !opposing_keys && !place_meeting(x, y - topSpeed, obj_wall)) {
	//burst
	if (can_move && just_moved && last_Vdir = Vdir.down && !touching_wall && !place_meeting(x, y - burstSpeed, obj_wall)) {
			yMove -= -burstSpeed;
			moving = true; burst = true;
			last_Vdir = Vdir.up;
			just_stopped = false;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move) {
		yMove -= topSpeed;
		moving = true;
		just_moved = true;
		just_stopped = false;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Vdir = Vdir.up;
		alarm_set(4, 20);
	}
}

if (xMove != 0 && yMove != 0) {
	xMove *= .707;
	yMove *= .707;
}
x += xMove;
y += yMove;

//not for movement, just to keep direction consistent
if (xMove != 0) {
	if (xMove > 0) {
		if (yMove > 0) direction = 315;
		else if (yMove < 0) direction = 45;
		else direction = 0;
	} else {
		if (yMove > 0) direction = 225;
		else if (yMove < 0) direction = 135;
		else direction = 180;
	}
} else if (yMove > 0) direction = 270;
else if (yMove < 0) direction = 90;
/*var moveDir = 15;
if (xMove != 0) {
	if (xMove > 0) {
		if (yMove > 0) direction = clamp(315, direction - moveDir, direction + moveDir);
		else if (yMove < 0) direction = clamp(45, direction - moveDir, direction + moveDir);
		else direction = clamp(0, direction - moveDir, direction + moveDir);
	} else {
		if (yMove > 0) direction = clamp(225, direction - moveDir, direction + moveDir);
		else if (yMove < 0) direction = clamp(135, direction - moveDir, direction + moveDir);
		else direction = clamp(180, direction - moveDir, direction + moveDir);
	}
} else if (yMove > 0) direction = clamp(270, direction - moveDir, direction + moveDir);
else if (yMove < 0) direction = clamp(90, direction - moveDir, direction + moveDir);*/

//keep moving a bit 1 frame after stopping
if (just_stopped &&
	!lInput && !rInput &&
	!dInput && !uInput) {
		var sspd = topSpeed / 2 + 1;
			 if (last_Hdir == Hdir.left	&&	!place_meeting(x - sspd, y, obj_wall))	x -= sspd;
		else if (last_Hdir == Hdir.right && !place_meeting(x + sspd, y, obj_wall))	x += sspd;
			 if (last_Vdir == Vdir.up	&&	!place_meeting(x, y - sspd, obj_wall))	y -= sspd;
		else if (last_Vdir == Vdir.down &&	!place_meeting(x, y + sspd, obj_wall))	y += sspd;
		just_stopped = true;
}

//Movement Speed Cap
/*if (!burst) {
	if(speed > topSpeed) {
		speed = topSpeed;
	}
	if(speed < -topSpeed) {
		speed = -topSpeed;
	}
}
if (burst) {
	if(speed > burstSpeed) {
		speed = burstSpeed;
	}
	if(speed < -burstSpeed) {
		speed = -burstSpeed;
	}
}*/

move_wrap(true, true, -70);