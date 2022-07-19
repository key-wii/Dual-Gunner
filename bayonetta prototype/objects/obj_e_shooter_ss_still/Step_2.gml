var player = obj_player_move;
if (instance_exists(player)) {
	var playerMoved = (player.x > player.xstart + 20 || player.y > player.ystart + 20 ||
		player.x < player.xstart - 20 || player.y < player.ystart - 20) || awareOfPlayer;
	if (playerMoved) {
		var dir = point_direction(x, y, player.x, player.y);
		var _d = angle_difference(dir, direction);
		direction = clamp(direction + _d, direction - 10, direction + 10);
		image_angle = direction;
	}
}
if (move.speed == 0) move.direction = direction;
