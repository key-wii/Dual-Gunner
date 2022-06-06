function mpAdd(num) {
	if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
		if (hyper) exit;
		mp += num;
		if (mp > maxMp) mp = maxMp;
		with (mpGauge) mp = other.mp;
		global.mp = mp;
	}
}

function mpReduce(num) {
	if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
		mp = floor(mp - num);
		if (mp < 0) mp = 0;
		with (mpGauge) mp = other.mp;
		global.mp = mp;
	}
}

function mpReduceSmall(num) {
	if (global.nextRoom) exit;
	if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
		mp = mp - num;
		if (mp < 0) mp = 0;
		with (mpGauge) mp = other.mp;
		global.mp = mp;
	}
}