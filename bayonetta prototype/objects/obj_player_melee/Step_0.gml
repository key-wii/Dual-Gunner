jump_move(move);

if (!mouse_check_button(mb_left) && !mouse_check_button(mb_right)) {
	hold = false;
}

//input buffering
if (mouse_check_button_pressed(mb_left) && dir_face != 1) {
	alarm_set (6, 1);
	alarm_set (7, 0);
} else if (mouse_check_button_pressed(mb_right) && dir_face != -1) {
	alarm_set (7, 1);
	alarm_set (6, 0);
}