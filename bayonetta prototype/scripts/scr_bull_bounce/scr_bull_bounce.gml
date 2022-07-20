function bull_bounce() {
	var angleMod = 180; //for horizontal collisions
	var ddir = point_direction(other.x, other.y, x, y);
	var ddir = point_direction(other.x, other.y, x, y);
	if ((ddir > 45 && ddir < 135) || (ddir > 225 && ddir < 315)) angleMod = 0; //for vertical collisions
	direction = angleMod - direction;
	image_angle = direction;
}