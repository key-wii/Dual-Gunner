/// @description Wait until damage taken to retaliate
if (hp < maxHp) {
	alarm_set(0, 50);
	alarm_set(2, 10);
} else alarm_set(1, 5);