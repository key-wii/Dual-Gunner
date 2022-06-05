/// @description Rock Up
if (rock >= 5) {
	alarm_set(4, 1);
	exit;
}

hdir += 20;
//direction -= 15;
direction += 30 * dir_face;
if (hdir >= 150) {
	alarm_set(6, 3);
	rock++;
	taunt_text();
}
else alarm_set(7, 1);

var l = abs(hdir) / 2;
if (l <= 20) l = 0;
hx = lengthdir_x(sprite_width / 2 + 10 + l + rock * 2 + irandom(5), dir_orig + hdir / 2);
hy = lengthdir_y(sprite_width / 2 + 10 + l + rock * 2 + irandom(5), dir_orig + hdir / 2);