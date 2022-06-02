function dashSkill() {
	if (cooldown_dash == 0 && !instance_exists(obj_player_dash)) {
		point_mouse();
		instance_change(obj_player_dash_windup, true);
	} else {
		alarm_set (8, 1);
	}
}