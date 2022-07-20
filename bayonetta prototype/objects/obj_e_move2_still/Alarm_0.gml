if (kBack || owner.dizzy > 0 || owner.hp >= owner.maxHp) {
	alarm_set(0, 1);
	exit;
}
vspeed = -5;
alarm_set(1, 50 + random(50));

if (x < edge) hspeed = 6;
else if (x > room_width - edge) hspeed = -6;
else hspeed = 2 * irandom_range(-1, 1);
if (y < edge) vspeed = 5;
else if (y > room_height - edge) vspeed = -5;