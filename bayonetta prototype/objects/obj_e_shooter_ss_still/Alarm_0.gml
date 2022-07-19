/// @description Fire bullet
var player = obj_player_move;
var playerMoved = (player.x > player.xstart + 20 || player.y > player.ystart + 20 ||
	player.x < player.xstart - 20 || player.y < player.ystart - 20) || awareOfPlayer;
if (sprite_index != spriteDefault || !playerMoved) {
	alarm_set(0, 1);
	exit;
}
if (!awareOfPlayer) {
	awareOfPlayer = true;
	alarm_set(0, 32);
	exit;
}

sound_machine(snd_shoot_e2);
var xx = lengthdir_x(sprite_width / 2, direction);
var yy = lengthdir_y(sprite_width / 2, direction);
var bull = instance_create_layer(x + xx, y + yy, "Bull_e", obj_bull_e);
var ran = irandom_range(-2, 2);
bull.direction = direction + ran * 3;
bull.image_angle = bull.direction;
bull.speed = 6;
bull.image_xscale = .7;
bull.image_yscale = .5;

alarm_set(0, 32);