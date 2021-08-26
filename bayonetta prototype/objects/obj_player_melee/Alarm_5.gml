/// @description Wicked Weave
if (hold) {
	alarm_set(5, 1);
	exit;
}
sound_machine(snd_throwWave);
var xx = lengthdir_x(sprite_width / 2, start_dir);
var yy = lengthdir_y(sprite_width / 2, start_dir);
var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
wave.direction = start_dir;
wave.image_angle = wave.direction;
wave.speed = 20; //14?