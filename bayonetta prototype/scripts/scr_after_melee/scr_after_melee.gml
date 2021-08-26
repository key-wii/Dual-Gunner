function after_melee() {
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
	just_meleed = true;
	instance_change(obj_player, false);
	if (last_shot) alarm_set(2, 60);
	else alarm_set(2, 40);
	if (last_hit) reset_combo();
}