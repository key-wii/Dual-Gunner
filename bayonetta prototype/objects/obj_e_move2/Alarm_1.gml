if (kBack || owner.dizzy > 0) {
	alarm_set(1, 1);
	exit;
}
vspeed = 5;
alarm_set(0, 5 + random(50));

if (x < 100) hspeed = 6;
else if (x > room_width - 100) hspeed = -6;
else hspeed = 2 * irandom_range(-1, 1);