// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dashToIdle() {
	with (move) {
		can_move = true;
		dashSpd = 19;
	}
	cooldown_dash = cooldownDashMax;
	instance_change(obj_player, false);
}