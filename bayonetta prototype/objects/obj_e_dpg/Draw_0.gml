// 
event_inherited();

var xx = lengthdir_x(sprite_width / 2, direction);
var yy = lengthdir_y(sprite_width / 2, direction);
var radius = charge * 3;
draw_set_alpha(.6);
for (var i = 0; i < 8; i++)
	if (charging) draw_circle_color(x + xx, y + yy, radius - i, c_red, c_red, true);
draw_set_alpha(1);
