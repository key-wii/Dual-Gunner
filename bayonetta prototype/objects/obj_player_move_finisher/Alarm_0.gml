/// @description 
if (!instance_exists(enemy)) exit;
var tx = enemy.x;
var ty = enemy.y;
var ddis = point_distance(x, y, tx, ty);
var ddir = point_direction(x, y, tx, ty);
if (ddis > targetLen) {
	x += lengthdir_x(spd, ddir);
	y += lengthdir_y(spd, ddir);
	ddis = point_distance(x, y, tx, ty);
}
if (ddis < targetLen) {
	x += lengthdir_x(spd, ddir + 180);
	y += lengthdir_y(spd, ddir + 180);
}
if (ddis < targetLen + spd && ddis > targetLen - spd) {
	x = tx + lengthdir_x(targetLen, ddir + 180);
	y = ty + lengthdir_y(targetLen, ddir + 180);
	ddis = targetLen;
}
if (ddis != targetLen) alarm_set(0, 1);