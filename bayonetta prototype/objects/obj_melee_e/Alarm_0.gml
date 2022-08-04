if (instance_exists(owner)) with (owner) {
	melee_combo();
	if (last_hit) alarm_set(5, meleeCharge / 8);
}