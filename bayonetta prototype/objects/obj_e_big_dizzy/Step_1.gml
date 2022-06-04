/// @description Jump to move object
jump_move(move);

if (spin > 0) {
	var s = floor(spin / 20);
	direction -= s * dir_ran;
	spin -= s;
	image_angle = direction;
}