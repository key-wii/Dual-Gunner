/// @description 
image_xscale = 1;
image_yscale = 1;
layer = layer_get_id("Above");

mpReduce(8);
alarm_set(0, 1);
alarm_set(1, 300);

if (enemyToFinish.dizzy > 0) enemyToFinish.dizzy = 50;
alarm_set(2, 1);

with (obj_player_move) {
	stop = true;
	instance_change(obj_player_move_finisher, true);
	enemy = other.enemyToFinish;
	targetLen = enemy.sprite_width + 120;
}
with (obj_finisher_prompt) instance_change(obj_finisher_prompt2, true);

if (dir_face > 0) dir = L;
else {
	dir = R;
	with (obj_finisher_prompt2) text = "E";
}
hits = 0;
alarm_set(3, 1);

mpGauge.visible = false;
gun.visible = false;
instance_destroy(obj_skills_parent);
instance_destroy(obj_mirror);