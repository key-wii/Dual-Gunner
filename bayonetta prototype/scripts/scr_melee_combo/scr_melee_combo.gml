function melee_combo() {
	combo_list();
	if (ds_list_size(combo_now) == 1) {
		if (dir_face == 1) first_hit = L;
		if (dir_face == -1) first_hit = R;
	}
	var combo = false;
	for (var i = 0; i < ds_list_size(combos); i++)
		if (check_combo(combo_now, combos[| i])) {
			if (ds_list_size(combo_now) == ds_list_size(combos[| i])) last_hit = true;
			combo = true;
		}
		if (combo) exit;
	if (!combo) {
		reset_combo();
		if (dir_face == 1) first_hit = L;
		if (dir_face == -1) first_hit = R;
		combo_list();
	}
}