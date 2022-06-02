function spr_hitstun() {
	if (object_index != obj_player) instance_change(obj_player, false);
	set_vars();
	instance_destroy(obj_skills_parent);
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
}