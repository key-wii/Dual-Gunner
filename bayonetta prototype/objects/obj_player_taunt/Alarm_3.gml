/// @description Fingergun (short taunt)
if (hold) {
	alarm_set(5, 1);
	exit;
}

if (hand == 0) taunt_text();
hand = 1;
hdir += 10 * h_face;
if (abs(hdir) >= 60) {
	alarm_set(4, 30);
	if (ds_list_size(mirrors) > 0) alarm_set(10, 1);
}
else alarm_set(3, 1);