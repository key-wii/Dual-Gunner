/// @description Jump to move object, Spin
jump_move(move);

if (spin > 0) {
	var s = floor(spin);
	direction -= s * dir_ran;
	spin -= s;
	image_angle = direction;
}
