/// @description Change position
if (instance_exists(owner)) {
	var tx = owner.hpX; //target x
	var ty = owner.hpY; //target y
	var ddis = 1;
	var ddir = point_direction(x, y, tx, ty);
	var xx = lengthdir_x(ddis, ddir);
	var yy = lengthdir_y(ddis, ddir);
	x = clamp(tx, tx - xx, tx + xx);
	y = clamp(ty, ty - yy, ty + yy);
	x = clamp(x, 100 + r, room_width - 100 - r); //stay in boundary of room
	y = clamp(y, 100 + r, room_height - 100 - r); //stay in boundary of room
}