jump_move(move);

audio_stop_sound(snd_chargeWave);

if (just_countered) exit;

//Finisher
if (keyboard_check(global.taunt) && keyboard_check(global.block) && 
	instance_exists(obj_finisher_prompt) && mp >= 8 &&
	enemyToFinish != noone) {
		instance_change(obj_player_finisher, true);
		exit;
}

if (mouse_check_button_pressed(mb_left)) {
	dir_face = 1;
	melee();
}
if (mouse_check_button_pressed(mb_right)) {
	dir_face = -1;
	melee();
}
if (cooldown_jump == 0 && keyboard_check_pressed(global.taunt)) {
	//instance_change(obj_player_jump, true);
}
if (cooldown_counter == 0 && keyboard_check_pressed(global.block)) {
	instance_change(obj_player_counter, true);
}
if (keyboard_check_pressed(global.dash)) {
	dashSkill();
}