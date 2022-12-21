/// @description Punch

if (hold) var dmg = 70;
else var dmg = 15;
if (hold) dmg += combo_length * 5;
else dmg += combo_length * 2.5;
punch(start_dir, dir_face, dmg, hold);

var ddir = start_dir + 180;
with (move) {
	var xx = lengthdir_x(2, ddir);
	var yy = lengthdir_y(2, ddir);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
}
//direction = start_dir + 60 * dir_face * -1;
just_meleed = true;

melee_count++;
alarm_set(1, 14);


//Partner fires bullet
/*if (instance_exists(partner)) with (partner) {
	var xx = lengthdir_x(sprite_width / 16, direction);
	var yy = lengthdir_y(sprite_width / 16, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Player", obj_bull_partner);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 25;
	bull.image_yscale = .5;
}