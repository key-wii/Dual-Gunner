if (instance_exists(owner)) {
	theta = owner.direction;
	if (theta >= 360) theta -= 360;
	
	x = owner.x + lengthdir_x(radius, theta);
	y = owner.y + lengthdir_y(radius, theta);
		
	
	direction = owner.direction;
	image_angle = direction;
}
//point_mouse();

if (hp > 0) exit;
death();