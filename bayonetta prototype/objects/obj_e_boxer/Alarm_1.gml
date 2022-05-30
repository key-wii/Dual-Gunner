/// @description Fire bullet
/*if (sprite_index != spriteDefault) {
	alarm_set(0, 2);
	exit;
}*/
charging = false;
charge = chargeMax;

//audio_stop_sound(snd_hoedown_charge);
sound_machine(snd_hoedown_shoot);
var ddir = direction;
var xx = lengthdir_x(sprite_width / 2, ddir);
var yy = lengthdir_y(sprite_width / 2, ddir);
var bull = instance_create_layer(x + xx, y + yy, "Bull_e", obj_bull_cannonball_e);
bull.direction = ddir;
bull.image_angle = ddir;
bull.speed = 24;
bull.image_xscale = 1;
bull.image_yscale = 1;

x_adjust = lengthdir_x(80, direction + 180);
y_adjust = lengthdir_y(80, direction + 180);

alarm_set(0, 250);
