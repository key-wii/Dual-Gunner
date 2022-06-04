/// @description Reduce Cooldowns & Check if finisher is possible
if (cooldown_jump > 0) cooldown_jump--;
if (cooldown_counter > 0) cooldown_counter--;
if (cooldown_dash > 0) cooldown_dash--;

if (instance_exists(obj_e_dizzy)) {
	enemyToFinish = instance_nearest(x, y, obj_e_dizzy);
	var closeEnough = point_distance(x, y, enemyToFinish.x, enemyToFinish.y) <= enemyToFinish.sprite_width * 3;
	if (mp >= 8 && !instance_exists(obj_finisher_prompt)) {
		if (closeEnough) {
			var prompt = instance_create_layer(x, y, "UI", obj_finisher_prompt);
			prompt.owner = id;
		} else enemyToFinish = noone;
	} else if (mp < 8 || !closeEnough || !instance_exists(obj_finisher_prompt)) {
		enemyToFinish = noone;
	}
} else enemyToFinish = noone;