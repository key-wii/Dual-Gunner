/*xx = cos(direction) * radius;
yy = sin(direction) * radius;
if (instance_exists(owner)) {
	x = owner.x + xx;
	y = owner.y + yy;
}
direction += spd;*/

theta += spd;
if (theta >= 360) theta -= 360;
if (instance_exists(owner)) {
	x = owner.x + lengthdir_x(radius, theta);
	y = owner.y + lengthdir_y(radius, theta);
}

move_wrap(true, true, -70);