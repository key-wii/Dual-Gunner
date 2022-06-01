if (hp > 0) exit;
if (instance_exists(owner)) with (owner) {
	arms--;
	if (arms <= 0) {
		with (trap) alarm_set(1, 1); //Remove arena trap
		invincible = false;
		sprite_index = spriteDefault;
		alarm_set(0, 0);
		alarm_set(1, 0);
		alarm_set(2, 0);
		alarm_set(3, 0);
		dizzy_set(-9999, 1300 + irandom(359)); //Become dizzy for a loooooong time
		room_speed = 2
		with (obj_controller) alarm_set(2, 1);
		ssSteady(16, 15, true, true);
	}
	else {
		room_speed = 6;
		with (obj_controller) alarm_set(2, 1);
		ssSteady(10, 10, true, true);
	}
}