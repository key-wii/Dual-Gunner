/// @description 
image_xscale = 1;
image_yscale = 1;
scale = .9;
hand = -1;

alarm_set(0, 1);
alarm_set(1, 7);
alarm_set(2, 13);
alarm_set(3, 0);
alarm_set(4, 0);
alarm_set(5, 0);
alarm_set(6, 0);
alarm_set(7, 0);

dir_orig = direction;
h_face = 1;
if (dir_orig >= 90 && dir_orig < 270) h_face = -1;
hdir = 0;
rock = 0;
hold = true;

hx = lengthdir_x(sprite_width / 2 + 10, dir_orig);
hy = lengthdir_y(sprite_width / 2 + 10, dir_orig);

with (obj_player_move) stop = true;

gun.visible = false;
move.arrow.visible = false;

//sound_machine(snd_);