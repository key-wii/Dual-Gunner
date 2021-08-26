/// @description Wicked Weave

/*if (hold) {
	alarm_set(5, 1);
	exit;
}*/
var xx = lengthdir_x(sprite_width / 2, direction);
var yy = lengthdir_y(sprite_width / 2, direction);
var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
wave.direction = direction;
wave.image_angle = wave.direction;
wave.speed = 20; //14?