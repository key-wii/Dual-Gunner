/// @description Melee
if (dir_face == 1) sound_machine(snd_slash);
else sound_machine(snd_slash2);
var atk = instance_create_layer(x, y, "Player", obj_melee);
if (first) with (atk) {
	first = true;
	image_xscale *= 1.25;
	image_yscale *= 1.25;
}
atk.direction = start_dir;
atk.image_angle = atk.direction;
atk.owner = id;
atk.move = move;
atk.image_yscale *= dir_face;
var ddir = start_dir;
with (move) { 
	var xx = lengthdir_x(12, ddir);
	var yy = lengthdir_y(12, ddir);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
}
with (move) {
	topSpeed = .1;
	burstSpeed = .1;
}
chargeup = false;
tick = 0;
just_meleed = true;

melee_count++;

//alarm_set(5, 4);


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