/// @description Wait until damage taken to fire bullet
if (hp < maxHp) {
	alarm_set(0, 50);
} else alarm_set(1, 5);