function destroy_minions(minion) {
	//if (hp <= 0) with (obj_e_parent) hp = 1;
	with (minion) {
		with (move) instance_destroy();
		instance_destroy();
	}
}