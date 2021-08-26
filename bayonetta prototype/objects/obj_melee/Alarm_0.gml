if (instance_exists(obj_player_melee)) with (obj_player_melee) {
	melee_combo();
	if (last_hit) alarm_set(5, meleeCharge / 8);
}