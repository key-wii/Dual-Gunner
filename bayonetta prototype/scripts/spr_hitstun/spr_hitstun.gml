function spr_hitstun() {
	if (object_index != obj_player) instance_change(obj_player, false);
	set_vars();
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
		stop = false;
		can_move = true;
	}
	gun.visible = true;
	move.arrow.visible = true;
}