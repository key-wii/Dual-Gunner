/// @description Rock Start (long taunt)
direction = dir_orig;
hand = 2;
hdir += 10;
if (hdir >= 220) {
	if (ds_list_size(mirrors) > 0) alarm_set(11, 26);
	alarm_set(6, 25);
}
else alarm_set(5, 1);

hx = lengthdir_x(sprite_width / 2 + 10 + hdir / 5, dir_orig + hdir / 2);
hy = lengthdir_y(sprite_width / 2 + 10 + hdir / 5, dir_orig + hdir / 2);