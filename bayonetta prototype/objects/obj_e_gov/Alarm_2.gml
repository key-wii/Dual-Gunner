/// @description Spawn enemy
if (instance_number(obj_e_shooter_ss) +
	instance_number(obj_e_shooter_ss_still) +
	instance_number(obj_e_dizzy) +
	instance_number(obj_e_spawn) >= minionMax) {
		tooManyMinions = true;
		alarm_set(2, 1);
		exit;
}
if (tooManyMinions) {
	tooManyMinions = false;
} else {
	create_enemy(sprite_width + 160, 300, obj_e_shooter_ss);
}

alarm_set(2, 300);