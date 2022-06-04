/// @description Keep enemy dizzy/Trigger fall down
if (!instance_exists(enemyToFinish)) {
	instance_destroy(obj_finisher_prompt2);
	alarm_set(1, 1);
	alarm_set(3, 0);
} else {
	enemyToFinish.dizzy = dizzyReturn;
	alarm_set(2, 1);
}