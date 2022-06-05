function finisher() {
	if (keyboard_check(global.taunt) && keyboard_check(global.block) && 
		instance_exists(obj_finisher_prompt) && mp >= 8 &&
		enemyToFinish != noone) {
			instance_change(obj_player_finisher, true);
	}
}