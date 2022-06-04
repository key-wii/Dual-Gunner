/// @description DEBUG: Refill MP
if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
	global.mp = maxMp;
	mp = global.mp;
	with (mpGauge) mp = global.mp;
}