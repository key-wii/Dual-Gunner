/// @description Dizzy Particles
if (dizzy > 100) {
	part_particles_create(global.partSystemAbove, x, y - sprite_width / 2 + 40, global.partDizzy192, 1);
	part_particles_create(global.partSystemAbove, x, y + sprite_width / 2 - 40, global.partDizzy192B, 1);
}
alarm_set(11, 30);
