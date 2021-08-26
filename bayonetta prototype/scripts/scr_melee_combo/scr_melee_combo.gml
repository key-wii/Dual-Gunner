function melee_combo() {
	combo_list();
	if (ds_list_size(combo_now) == 1) {
		if (dir_face == 1) first_hit = L;
		if (dir_face == -1) first_hit = R;
	}
	if (check_combo(combo_now, combo1)) {
		if(ds_list_size(combo_now) == ds_list_size(combo1)) last_hit = true;
	} else {
		reset_combo();
		if (dir_face == 1) first_hit = L;
		if (dir_face == -1) first_hit = R;
		combo_list();
	}
}