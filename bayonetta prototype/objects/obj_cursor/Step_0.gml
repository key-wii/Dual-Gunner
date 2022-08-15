/// @description Move using gamepad
if (haxis == 0 && vaxis == 0) exit;
var ddir = point_direction(0, 0, haxis, vaxis);
x += lengthdir_x(spdMax * abs(haxis), ddir);
y += lengthdir_y(spdMax * abs(vaxis), ddir);
x = clamp(x, 0, window_get_width());
y = clamp(y, 0, window_get_height());
just_used_axis = true;