/// @description Charge Cannonball
if (charge > chargeMin) {
	charging = true;
	if (charge <= 20) charge -= 1;
	else charge -= .9;
	alarm_set(0, 1);
} else {
	alarm_set(1, 1);
}
