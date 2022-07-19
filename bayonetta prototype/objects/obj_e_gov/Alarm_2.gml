/// @description Spawn enemies

var spawn = instance_create_layer(x, y, "Enemy", obj_e_spawn);
spawn.enemy = obj_e_shooter_ss;