/// @description Rock Start (long taunt)
direction = dir_orig;
hand = 2;
hdir += 10;
if (hdir >= 220) alarm_set(6, 30);
else alarm_set(5, 1);

hx = lengthdir_x(sprite_width / 2 + 10 + hdir / 10, dir_orig + hdir / 2);
hy = lengthdir_y(sprite_width / 2 + 10 + hdir / 10, dir_orig + hdir / 2);