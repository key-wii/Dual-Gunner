jump_move(move);

var ddir = abs(windupMax * 2) - abs(windup);
if (windup < windupMax) {
	windup++;
	direction += clamp(windup, -1, 1) * ddir * dir_face * 10;
} else {
	direction = dir_orig;
	var ddir = direction;
	//ddir = direction + 180;
	with (move) {
		direction = ddir;
		can_move = true;
		dashing = true;
		dash_dir_change = 2; //Don't let player change direction during dash
		dashSpd = 25;
	}
	instance_change(obj_player_dash, true);
}
image_angle = direction;