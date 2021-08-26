function melee(){
	point_mouse();
	if (!instance_exists(obj_melee)) {
		combo_list();
		if (check_combo(combo_now, combo1)) {
			if(ds_list_size(combo_now) == ds_list_size(combo1)) last_hit = true;
		} else {
			if (dir_face == 1) first_hit = L;
			if (dir_face == -1) first_hit = R;
			combo_list();
		}
		instance_change(obj_player_melee, true);
	} else {
		if (dir_face == 1) alarm_set (6, 1);
		if (dir_face == -1) alarm_set (7, 1);
	}
}