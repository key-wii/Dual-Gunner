/// @description Don't despawn mirrors

jump_move(move);

with (obj_mirror) {
	image_alpha = 1;
	if (timer < 5) timer = 5;
	timer += 1;
}