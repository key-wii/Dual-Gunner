jump_move(move);

//audio_stop_sound(snd_chargeWave);

if (global.cutscene || just_countered) exit;

//Finisher
if (keyboard_check(global.taunt) && keyboard_check(global.block) && 
	instance_exists(obj_finisher_prompt) && mp >= 8 &&
	enemyToFinish != noone) {
		instance_change(obj_player_finisher, true);
		exit;
}

//Activate Hyper Mode
if (global.unlockedHyper) {
	if (/*cooldown_hyper == 0 && */mouse_check_button(mb_left) && mouse_check_button(mb_right)) {
			if (!hyper && mp >= 4) {
				hyper_pressed++;
				if (hyper_pressed == 5) hyper_start(false);
				exit;
			} else if (hyper) {
				hyper_pressed++;
				if (hyper_pressed == 5) hyper_end(false);
				exit;
			}
	}
	if (mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right)) hyper_pressed = 0;
}

if (mouse_check_button_pressed(mb_left)) {
	dir_face = 1;
	melee();
}
if (mouse_check_button_pressed(mb_right)) {
	dir_face = -1;
	melee();
}
if (cooldown_taunt == 0 && keyboard_check_pressed(global.taunt) && global.unlockedTaunt) {
	instance_change(obj_player_taunt, true);
}
if (cooldown_counter == 0 && keyboard_check_pressed(global.block) && global.unlockedCounter) {
	instance_change(obj_player_counter, true);
}
if (keyboard_check_pressed(global.dash) && global.unlockedDash) {
	dashSkill();
}