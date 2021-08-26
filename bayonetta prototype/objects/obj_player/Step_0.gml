jump_move(move);

audio_stop_sound(snd_chargeWave);

if (mouse_check_button_pressed(mb_left)) {
	dir_face = 1;
	melee();
}

if (mouse_check_button_pressed(mb_right)) {
	dir_face = -1;
	melee();
}