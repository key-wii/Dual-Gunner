jump_move(move);

/*if (dashInput_pressed) {
	dashExplode = true;
}*/

var ddir = abs(windupMax * 2) - abs(windup);
if (windup < windupMax) {
	windup++;
	direction += clamp(windup, -1, 1) * ddir * dir_face * 10;
} else {
	direction = dir_orig;
	var ddir = direction;
	//ddir = direction + 180;
	with (move) {
		can_move = true;
		dash_dir_change = 2; //Don't let player change direction during dash
	}
	dash2(30);
	instance_change(obj_player_dash, true);
}
image_angle = direction;