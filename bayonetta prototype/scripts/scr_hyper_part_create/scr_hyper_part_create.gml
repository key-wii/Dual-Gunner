function hyper_part_create() {
	var ran_r = clamp(irandom(sprite_width * .6), 10, 99999); //random radius
	var ran_t = irandom(359); //random theta
	var xx = lengthdir_x(ran_r, ran_t);
	var yy = lengthdir_y(ran_r, ran_t);
	part_particles_create(global.partSystem, x + xx, y + yy, global.partHyper, 1);
}