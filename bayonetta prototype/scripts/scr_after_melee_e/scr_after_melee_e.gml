function after_melee_e(state) {
	dir_face *= -1;
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
	just_meleed = true;
	instance_change(state, false);
	if (last_shot) alarm_set(2, 60);
	else alarm_set(2, 50);
	if (last_hit) {
		reset_combo();
		alarm_set(0, 70);
	} else alarm_set(0, 40);
}