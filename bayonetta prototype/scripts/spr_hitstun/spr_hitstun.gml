function spr_hitstun() {
	if (object_index != obj_player) instance_change(obj_player, false);
	set_vars();
	instance_destroy(obj_skills_parent);
	audio_stop_sound(snd_chargeWave);
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
}