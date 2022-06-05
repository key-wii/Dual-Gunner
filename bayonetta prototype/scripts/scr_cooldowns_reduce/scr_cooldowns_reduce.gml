function cooldowns_reduce() {
	//if (cooldown_jump > 0) cooldown_jump--;
	if (cooldown_counter > 0) cooldown_counter--;
	if (cooldown_taunt > 0) cooldown_taunt--;
	if (cooldown_dash > 0) cooldown_dash--;
}