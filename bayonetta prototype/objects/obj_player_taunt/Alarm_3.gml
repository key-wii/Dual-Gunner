/// @description Fingergun (short taunt)
if (hold) {
	alarm_set(5, 1);
	exit;
}

hand = 1;
hdir += 10 * h_face;
if (abs(hdir) >= 60) alarm_set(4, 30);
else alarm_set(3, 1);