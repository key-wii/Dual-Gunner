jump_move(move);

audio_stop_sound(snd_chargeWave);

if (just_countered) exit;

if (mouse_check_button_pressed(mb_left)) {
	dir_face = 1;
	melee();
}

if (mouse_check_button_pressed(mb_right)) {
	dir_face = -1;
	melee();
}

if (cooldown_jump == 0 && keyboard_check_pressed(vk_space)) {
	instance_change(obj_player_jump, true);
}

if (cooldown_counter == 0 && keyboard_check_pressed(ord("Q"))) {
	instance_change(obj_player_counter, true);
}

if (keyboard_check_pressed(ord("E"))) {
	instance_change(obj_player_dash_windup, true);
}