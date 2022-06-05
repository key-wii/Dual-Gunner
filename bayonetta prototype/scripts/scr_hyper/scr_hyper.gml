function hyper_check(cancel) {
	//Activate Hyper Mode
	if (cooldown_hyper == 0 && mouse_check_button(mb_left) && mouse_check_button(mb_right)) {
		if (!hyper && mp >= 4) {
			hyper_pressed++;
			if (hyper_pressed >= 5) hyper_start(cancel);
		} else if (hyper) {
			hyper_pressed++;
			if (hyper_pressed >= 5) hyper_end(cancel);
		} else {
			hyper_pressed = 0;
		}
	} else {
		hyper_pressed = 0;
	}
}

function hyper_start(cancel) {
	hyper_pressed = 0;
	hyper = true;
	mpGauge.hyper = true;
	cooldown_hyper = cooldownHyperMax;
	mpReduce(1);
	part_particles_create(global.partSystem, x, y, global.partHyperStart, 1);
	if (cancel) hypertoidle();
}

function hyper_end(cancel) {
	hyper_pressed = 0;
	hyper = false;
	mpGauge.hyper = false;
	cooldown_hyper = cooldownHyperMax;
	mpReduce(1);
	part_particles_create(global.partSystem, x, y, global.partHyperEnd, 1);
	if (cancel) hypertoidle();
}