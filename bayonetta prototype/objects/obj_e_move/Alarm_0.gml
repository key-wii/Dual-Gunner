if (kBack || owner.dizzy > 0 || owner.dizzy == -9999) {
	alarm_set(0, 1);
	exit;
}
if (x < edge) hspeed = -3;
else if (x > room_width - edge) hspeed = 3;
else hspeed = 0;
if (y < edge) vspeed = -3;
else if (y > room_height - edge) vspeed = 3;
else vspeed = 0;

alarm_set(0, 120);