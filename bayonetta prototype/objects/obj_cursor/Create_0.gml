/// @description 
image_speed = 0;
image_index = 2;
dir = 1;
alarm_set(0, 1);

prev_mouse_x = mouse_x;
prev_mouse_y = mouse_y;
if variable_instance_exists(global, "cursorX") {
	prev_mouse_x = global.cursorX;
	prev_mouse_y = global.cursorY;
}

just_used_axis = false;
spdMax = 40;
haxis = 0;
vaxis = 0;
haxis2 = 0;
vaxis2 = 0;