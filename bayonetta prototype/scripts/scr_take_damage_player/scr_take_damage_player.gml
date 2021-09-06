function take_damage_player(knockback, knockbackDir) {
	if (global.nextRoom) exit;
	room_speed = 20;
	with (obj_controller) alarm_set(2, 2);
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	spr_hitstun();
	
	hp -= other.pow;
	/*if (hp <= 0) {
		sound_machine(snd_dead);
		instance_destroy();
	}*/
	
	knockbacked_player(knockback * 2, knockbackDir);
}