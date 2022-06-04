function take_damage(knockback, knockbackDir) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	if (room_speed > 50) room_speed = 50;
	with (obj_controller) alarm_set(2, 1);
	
	if (obj_mp.visible) mpAdd(clamp(other.pow / 10, .1, 1));
	draw_damage(other.pow);
	hp -= other.pow;
	draw_hp();
	if (hp <= 0) {
		instance_destroy();
		exit;
	}
	
	if (!bodyPart && knockback != 0) knockbacked(knockback, knockbackDir);
	if (dizzy_dmg) {
		dizzy_set(100, knockback * 12);
	}
}

function take_damage3(knockback, knockbackDir) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	if (room_speed > 50) room_speed = 50;
	with (obj_controller) alarm_set(2, 2);
	
	if (obj_mp.visible) mpAdd(clamp(other.pow / 10, .1, 1));
	draw_damage(other.pow);
	hp -= other.pow;
	draw_hp();
	if (hp <= 0) {
		instance_destroy();
		exit;
	}
	
	if (!bodyPart && knockback != 0) knockbacked3(knockback, knockbackDir);
	if (dizzy_dmg) {
		dizzy_set(100, knockback * 12);
	}
}