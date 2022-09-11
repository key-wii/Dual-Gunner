/// @description Windup Cue

if (charge == chargeMax) {
	charging = true;
	with (armL) alarm_set(1, 0);
	with (armR) alarm_set(1, 0);
	
	switch (dir_attack) {
		case LEFT:
			sprite_index = spr_e_boxerL;
			attack_arm = armL;
			other_arm = armR;
			sound_machine(snd_punch_e_windup);
			break;
		case RIGHT:
			sprite_index = spr_e_boxerR;
			attack_arm = armR;
			other_arm = armL;
			sound_machine(snd_punch_e_windup2);
			break;
	}
	with (attack_arm) {
		//len_adjust = 0;
		dir_adjust = 0;
		alarm_set(3, 1);
	}
	with (other_arm) {
		len_adjust = 30;
		dir_adjust = -15;
		alarm_set(2, 1);
	}
}

if (charge > chargeMin) {
	if (charge <= 20) charge -= 1;
	else charge -= .9;
	alarm_set(0, 1);
} else {
	alarm_set(1, 1);
}