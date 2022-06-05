function hypertoidle() {
	instance_change(obj_player, false);
	with (move) {
		//topSpeed = topSpeed_default;
		//burstSpeed = burstSpeed_default;
		stop = false;
	}
	gun.visible = true;
	move.arrow.visible = true;
}