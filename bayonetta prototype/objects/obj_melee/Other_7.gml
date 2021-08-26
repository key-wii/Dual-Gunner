with (owner) {
	if (mouse_check_button(mb_left) || mouse_check_button(mb_right))
		instance_change(obj_player_melee_hold, true);
	else {
		after_melee()
	}
}
dash();
var len = sprite_width / 1.25;
var xx = lengthdir_x(len, direction);
var yy = lengthdir_y(len, direction);
splatterAt(x + xx, y + yy, 3, 3);
	len = sprite_width / 1.4;
xx = lengthdir_x(len, direction + 25);
yy = lengthdir_y(len, direction + 25);
splatterAt(x + xx, y + yy, 2, 2);
xx = lengthdir_x(len, direction - 25);
yy = lengthdir_y(len, direction - 25);
splatterAt(x + xx, y + yy, 2, 2);
	len = sprite_width / 1.05;
xx = lengthdir_x(len, direction + 60);
yy = lengthdir_y(len, direction + 60);
splatterAt(x + xx, y + yy, 2, 2);
xx = lengthdir_x(len, direction - 60);
yy = lengthdir_y(len, direction - 60);
splatterAt(x + xx, y + yy, 2, 2);
	len = sprite_width / 1.05;
xx = lengthdir_x(len, direction + 80);
yy = lengthdir_y(len, direction + 80);
splatterAt(x + xx, y + yy, 1, 1);
xx = lengthdir_x(len, direction - 80);
yy = lengthdir_y(len, direction - 80);
splatterAt(x + xx, y + yy, 1, 1);
	len = sprite_width / 1.05;
xx = lengthdir_x(len, direction + 95);
yy = lengthdir_y(len, direction + 95);
splatterAt(x + xx, y + yy, 1, 1);
xx = lengthdir_x(len, direction - 95);
yy = lengthdir_y(len, direction - 95);
splatterAt(x + xx, y + yy, 1, 1);

instance_destroy();