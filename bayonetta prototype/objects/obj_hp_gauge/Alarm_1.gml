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
}