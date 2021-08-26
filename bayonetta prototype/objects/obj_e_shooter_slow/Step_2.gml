var player = obj_player_move;
if (instance_exists(player)) {
	var last_dir = direction;
	direction = point_direction(x, y, player.x, player.y);
	if (last_dir - direction < 0 && direction > last_dir + 40) direction = last_dir + 40;
	else if (direction < last_dir - 40) direction = last_dir - 40;
	image_angle = direction;
}
if (move.speed == 0) move.direction = direction;