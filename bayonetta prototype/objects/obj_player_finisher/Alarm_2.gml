/// @description Keep enemy dizzy/Trigger fall down
if (!instance_exists(enemyToFinish)) {
	instance_destroy(obj_finisher_prompt2);
	alarm_set(1, 1);
	alarm_set(3, 0);
} else {
	if (enemyToFinish.dizzy > 0) enemyToFinish.dizzy = 50;
	alarm_set(2, 1);
}