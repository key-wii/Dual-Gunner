/// @description Move using mouse
var mx = window_mouse_get_x();
var my = window_mouse_get_y();
if (!just_used_axis || point_distance(mx, my, prev_mouse_x, prev_mouse_y) > 10) {
	x = clamp(mx, x - 300, x + 300);
	y = clamp(my, y - 300, y + 300);
	just_used_axis = false;
}
prev_mouse_x = mx;
prev_mouse_y = my;