function destroy_minions(minion) {
	with (minion) {
		if (minion == obj_e_spawn) instance_destroy();
		else if (hp > 1) hp = 1;
		/*with (move) instance_destroy();
		instance_destroy();*/
	}
}