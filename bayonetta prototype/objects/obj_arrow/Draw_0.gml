draw_set_alpha(.3);
if (instance_exists(owner)) {
	if (owner.object_index == obj_player_melee_hold) {
		var xx1 = x + lengthdir_x(sprite_width / 2 + 3, direction);
		var yy1 = y + lengthdir_y(sprite_width / 2 + 3, direction);
		var xx2 = x + lengthdir_x(2000, dir_line);
		var yy2 = y + lengthdir_y(2000, dir_line);
		var col = make_color_rgb(146, 49, 143);
		draw_line_width_color(xx1, yy1, xx2, yy2, 4, col, c_white);
	} else dir_line = direction;
}

draw_set_alpha(1);
draw_self();