// 
event_inherited();

//if (shield) draw_sprite_ext(spr_e_shield, 0, x, y, image_xscale, image_yscale, direction, c_white, 1);

var xx = lengthdir_x(sprite_width / 4, direction + 20 * dir_attack);
var yy = lengthdir_y(sprite_width / 4, direction + 20 * dir_attack);
var radius = charge * 3;
draw_set_alpha(.6);
for (var i = 0; i < 8; i++)
	if (charging) draw_circle_color(x + xx, y + yy, radius - i, c_yellow, c_yellow, true);
draw_set_alpha(1);
