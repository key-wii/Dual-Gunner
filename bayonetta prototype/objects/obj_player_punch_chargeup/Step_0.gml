jump_move(move);

if (!lAtkInput && !rAtkInput) {
	hold = false;
	instance_change(obj_player_punch, true);
}

//input buffering
/*if (lAtkInput_pressed && dir_face != 1) {
	alarm_set (6, 1);
	alarm_set (7, 0);
} else if (rAtkInput_pressed && dir_face != -1) {
	alarm_set (7, 1);
	alarm_set (6, 0);
}