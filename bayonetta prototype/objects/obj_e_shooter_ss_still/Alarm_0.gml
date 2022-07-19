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

fire_bull_e(snd_shoot_e2, direction, obj_bull_e, 2, 3, 6, .7, .5);

alarm_set(0, 32);