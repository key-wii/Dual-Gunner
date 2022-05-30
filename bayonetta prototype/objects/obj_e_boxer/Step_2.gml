var player = obj_player_move;
if ((!charging || charge > chargeMax - 5) && instance_exists(player)) {
	var dir = point_direction(x, y, player.x, player.y);
	var _d = angle_difference(dir, direction);
	direction = clamp(direction + _d, direction - 20, direction + 20);
	image_angle = direction;
}
