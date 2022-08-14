/// @description Move using mouse
if (!just_used_axis || point_distance(mouse_x, mouse_y, prev_mouse_x, prev_mouse_y) > 10) {
	x = clamp(mouse_x - global.cameraAdjust, x - 300, x + 300);
	y = clamp(mouse_y - global.cameraAdjust, y - 300, y + 300);
	just_used_axis = false;
}
prev_mouse_x = mouse_x;
prev_mouse_y = mouse_y;