/// @description 
if (instance_exists(owner)) {
	theta += 1;
	if (theta >= 360) theta -= 360;
	
	x = owner.x + lengthdir_x(radius, theta);
	y = owner.y + lengthdir_y(radius, theta);
}

move_wrap(true, true, -70);