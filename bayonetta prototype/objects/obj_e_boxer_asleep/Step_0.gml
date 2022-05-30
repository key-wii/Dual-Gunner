jump_move(move);

var player = obj_player_grandparent;
if (instance_exists(player)) {
	if (point_distance(x, y, player.x, player.y) < 250) {
		instance_change(obj_e_boxer, true);
	}
}