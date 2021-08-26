function reset_combo() {
	just_reset = true;
	just_meleed = false;
	melee_count = 0;
	ds_list_clear(combo_now);
	last_hit = false;
	alarm_set(5, 0);
	gun2dir = 0;
}