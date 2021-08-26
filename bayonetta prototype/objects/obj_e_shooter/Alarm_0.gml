/// @description Fire bullet
if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}

sound_machine(snd_shoot_e2);
var xx = lengthdir_x(sprite_width / 2, direction);
var yy = lengthdir_y(sprite_width / 2, direction);
var bull = instance_create_layer(x + xx, y + yy, "Bull_e", obj_bull_e);
bull.direction = direction;
bull.image_angle = direction;
bull.speed = 6;
bull.image_xscale = .7;
bull.image_yscale = .5;

alarm_set(0, 18);