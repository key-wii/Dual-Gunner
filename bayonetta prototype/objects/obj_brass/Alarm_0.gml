if (speed > 0) {
	speed /= drag;
	if (speed <= 0) {
		speed = 0;
		alarm_set(1, 1);
	}
	else if (speed > 0) alarm_set(0, 1);
}

var size_half = sprite_get_width(object_get_sprite(obj_wall));
var wall_near = instance_nearest(x, y, obj_wall);
if (x <= wall_near.x + size_half / 2 && x >= wall_near.x - size_half / 2
	&& y <= wall_near.y + size_half / 2 && y >= wall_near.y - size_half / 2) {
		var dir = point_direction(x, y, wall_near.x, wall_near.y);
		var dis = distance_to_object(wall_near);
		x += lengthdir_x(dis + sprite_height / 2, direction + 180);
		y += lengthdir_y(dis + sprite_height / 2, direction + 180);
		if (distance_to_object(wall_near) < dis) {
			x += lengthdir_x(dir / 2, direction + 180) + sprite_height / 2;
			y += lengthdir_y(dir / 2, direction + 180) + sprite_height / 2;
		}
		direction += 180 + irandom_range(-20, 20);
		//speed *= 1.25;
		//speed /= 2;
}