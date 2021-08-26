/*theta += spd;
if (theta >= 360) theta -= 360;
if (instance_exists(owner)) {
	x = owner.x + lengthdir_x(radius, theta);
	y = owner.y + lengthdir_y(radius, theta);
}*/

if (instance_exists(owner)) {
	theta = owner.direction;
	if (theta >= 360) theta -= 360;
	
	x = owner.x + lengthdir_x(radius, theta);
	y = owner.y + lengthdir_y(radius, theta);
}

move_wrap(true, true, -70);