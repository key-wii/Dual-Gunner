/// @description Dash Input Buffering
if (cooldown_dash > 0 || instance_exists(obj_player_dash)) {
	alarm_set(8, 1);
	exit;
}
dashSkill();