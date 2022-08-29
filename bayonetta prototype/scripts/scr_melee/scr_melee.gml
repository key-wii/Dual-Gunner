function melee(){
	alarm_set(8, 0);
	
	if (hyper && !just_meleed) {
		point_mouse();
		instance_change(obj_player_punch_chargeup, true);
	}
	else if (!hyper && !instance_exists(obj_melee)) {
		point_mouse();
		instance_change(obj_player_melee, true);
	} else {
		if (dir_face == 1) alarm_set (6, 1);
		if (dir_face == -1) alarm_set (7, 1);
	}
}