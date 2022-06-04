/// @description Destroy self if...
if (owner.mp >= 8 && instance_exists(obj_e_dizzy) && instance_exists(owner)) {
	var enemy = instance_nearest(owner.x, owner.y, obj_e_dizzy);
	if (point_distance(owner.x, owner.y, enemy.x, enemy.y) <= enemy.sprite_width * 3) {
		alarm_set(1, 1);
		exit;
	}
}

alarm_set(0, 0);
alarm_set(2, 1);