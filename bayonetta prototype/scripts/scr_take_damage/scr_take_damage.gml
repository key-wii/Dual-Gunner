function take_damage(knockback, knockbackDir) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	room_speed = 50;
	
	hp -= other.pow;
	if (hp <= 0) {
		instance_destroy();
		exit;
	}
	with (obj_controller) alarm_set(2, 1);
	
	knockbacked(knockback, knockbackDir);
}

function take_damage3(knockback, knockbackDir) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	room_speed = 50;
	
	hp -= other.pow;
	if (hp <= 0) {
		instance_destroy();
		exit;
	}
	with (obj_controller) alarm_set(2, 2);
	
	knockbacked3(knockback, knockbackDir);
}