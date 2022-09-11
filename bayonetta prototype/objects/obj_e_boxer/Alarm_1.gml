/// @description Attack
sprite_index = spr_e_boxer;
charging = false;
charge = chargeMax;
attacking = true;
switch (dir_attack) {
	case LEFT: sound_machine(snd_punch_e); break;
	case RIGHT: sound_machine(snd_punch_e2); break;
}

var scale = 5;
with (attack_arm) {
	image_xscale = scale;
	image_yscale = scale;
	sprite_index = spriteAttack;
	invincible = true;
	lethal = true;
	alreadyHit = false;
	alarm_set(3, 0);
	alarm_set(5, 1);
}
with (other_arm) {
	alarm_set(2, 0);
	alarm_set(4, 1);
}

alarm_set(2, 35);