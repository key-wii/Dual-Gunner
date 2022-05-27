jump_move(move);

var ddir = abs(windupMax * 2) - abs(windup);
if (windup < windupMax) {
	windup++;
	direction += clamp(windup, -1, 1) * ddir * dir_face * 10;
} else {
	direction = dir_orig;
	var ddir = direction;
	with (move) {
		direction = ddir + 180;
		can_move = true;
		dashing = true;
		dash_dir_change = 2; //Don't let player change direction during dash
	}
	instance_change(obj_player_dash, true);
}
image_angle = direction;