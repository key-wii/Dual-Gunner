/// @description Fall down
point_mouse();
image_xscale -= .01;
image_yscale -= .01;
if (image_xscale == 1) {
	instance_destroy(obj_finisher_prompt2);
	instance_create_layer(x, y, "Bull", obj_explosion);
	if (instance_exists(enemyToFinish)) enemyToFinish.dizzy = dizzyReturn;
	
	layer = layer_get_id("Player");
	with (obj_player_move) {
		stop = false;
		instance_change(obj_player_move, false);
	}
	mpGauge.visible = true;
	gun.visible = true;
	move.arrow.visible = true;
	cooldown_jump = cooldownJumpMax;
	instance_change(obj_player, false);
}
else alarm_set(1, 1);