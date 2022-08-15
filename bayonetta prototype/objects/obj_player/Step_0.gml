jump_move(move);

//audio_stop_sound(snd_chargeWave);

if (global.cutscene || just_countered) exit;

//Finisher
if (finisherInput && 
	instance_exists(obj_finisher_prompt) && mp >= 8 &&
	enemyToFinish != noone) {
		instance_change(obj_player_finisher, true);
		exit;
}

//Activate Hyper Mode
if (global.unlockedHyper) {
	if (/*cooldown_hyper == 0 && */hyperInput) {
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
	if (AtkInput_released) hyper_pressed = 0;
}

if (lAtkInput_pressed) {
	dir_face = 1;
	melee();
}
if (rAtkInput_pressed) {
	dir_face = -1;
	melee();
}

if (cooldown_taunt == 0 && tauntInput_pressed && global.unlockedTaunt) {
	instance_change(obj_player_taunt, true);
}
if (cooldown_counter == 0 && counterInput_pressed && global.unlockedCounter) {
	instance_change(obj_player_counter, true);
}
if (dashInput && global.unlockedDash) {
	dashSkill();
}