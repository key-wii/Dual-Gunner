function point_mouse() {
	var ex, ey;
	ex = obj_cursor.x + global.cameraAdjust;
	ey = obj_cursor.y + global.cameraAdjust;
	direction = point_direction(x, y, ex, ey);
	image_angle = direction;
}