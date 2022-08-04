if (kBack || owner.dizzy > 0) {
	alarm_set(0, 1);
	exit;
}

if (x < edge) hspeed = topSpeed;
else if (x > room_width - edge) hspeed = -topSpeed;
else {
	var ran = irandom_range(-1, 1);
	hspeed = topSpeed * ran;
}

if (y < edge) vspeed = topSpeed;
else if (y > room_height - edge) vspeed = -topSpeed;
else {
	var ran = irandom_range(-1, 1);
	vspeed = topSpeed * ran;
}

if (vspeed != 0 && hspeed != 0) {
	hspeed *= .707;
	vspeed *= .707;
}

alarm_set(0, 5 + irandom(30));