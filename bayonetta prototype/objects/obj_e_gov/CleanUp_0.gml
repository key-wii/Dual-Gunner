/// @description Spawn enemy after becoming dizzy
if (hp < maxHp && hp > 0 && !instance_exists(obj_e_spawn))
	spawn_enemy(obj_e_shooter_ss, obj_e_shooter_ss_still, minionMax,
		sprite_width + 160, 300, obj_e_shooter_ss);