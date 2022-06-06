function cooldowns_reduce() {
	if (hyper) {
		if (cooldown_hyper_wait > 0) {
			hyper_part_create();
			cooldown_hyper_wait--;
		} else if (mp >= .01) {
			hyper_part_create();
			hyper_part_create();
			mpReduceSmall(.01);
		} else hyper_end(false);
	}
	//if (cooldown_hyper > 0) cooldown_hyper--;
	if (cooldown_counter > 0) cooldown_counter--;
	if (cooldown_taunt > 0) cooldown_taunt--;
	if (cooldown_dash > 0) cooldown_dash--;
}