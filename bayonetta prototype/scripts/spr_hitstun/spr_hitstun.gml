function spr_hitstun() {
	if (object_index != obj_player) instance_change(obj_player, false);
	set_vars();
	instance_destroy(obj_slash);
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
		stop = false;
	}
	gun.visible = true;
	move.arrow.visible = true;
}