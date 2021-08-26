function jump_move(move) {
	var wheels_exist = instance_exists(move);
	if(wheels_exist) {
		x = move.x + x_adjust;
		y = move.y + y_adjust;
	}
	if (x_adjust > 1) x_adjust -= 2;
	if (y_adjust > 1) y_adjust -= 2;
	if (x_adjust < -1) x_adjust += 2;
	if (y_adjust < -1) y_adjust += 2;
	if (x_adjust > -1 && x_adjust < 1) x_adjust = 0;
	if (y_adjust > -1 && y_adjust < 1) y_adjust = 0;
}