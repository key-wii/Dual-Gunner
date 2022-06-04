function mpAdd(num) {
	if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
		mp += num;
		if (mp > maxMp) mp = maxMp;
		with (mpGauge) mp = other.mp
	}
}

function mpReduce(num) {
	if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
		mp = floor(mp - num);
		if (mp < 0) mp = 0;
		with (mpGauge) mp = other.mp
	}
}