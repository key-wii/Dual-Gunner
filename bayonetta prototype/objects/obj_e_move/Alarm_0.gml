if (kBack) {
	alarm_set(0, 1);
	exit;
}
if (x < 100) hspeed = -3;
else if (x > room_width - 100) hspeed = 3;
else hspeed = 0;
if (y < 100) vspeed = -3;
else if (y > room_height - 100) vspeed = 3;
else vspeed = 0;

alarm_set(0, 120);