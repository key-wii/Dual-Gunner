function melee(){
	point_mouse();
	if (!instance_exists(obj_melee)) {
		instance_change(obj_player_melee, true);
	} else {
		if (dir_face == 1) alarm_set (6, 1);
		if (dir_face == -1) alarm_set (7, 1);
	}
}