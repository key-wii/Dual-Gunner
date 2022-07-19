function spawn_enemy(enemyCheck1, enemyCheck2, enemyMax, lenInside, lenOutside, type) {
	var n1 = 0; var n2 = 0;
	if (n1 != -1) n1 = instance_number(enemyCheck1);
	if (n2 != -1) n2 = instance_number(enemyCheck2);
	if (n1 + n2 + instance_number(obj_e_dizzy) + instance_number(obj_e_spawn) >= enemyMax) {
		tooManyMinions = true;
		exit;
	}
	if (tooManyMinions) {
		tooManyMinions = false;
	} else {
		create_enemy(lenInside, lenOutside, type);
	}
}

function create_enemy(lenInside, lenOutside, type) {
	var len = irandom(lenOutside) + lenInside;
	var ddir = irandom(359);
	var xx = x + lengthdir_x(len, ddir);
	var yy = y + lengthdir_y(len, ddir);
	if (xx >= room_width || xx <= 0) xx = x + lengthdir_x(lenOutside + lenInside - (len - lenOutside), ddir + 180);
	if (yy >= room_width || yy <= 0) yy = y + lengthdir_y(lenOutside + lenInside - (len - lenOutside), ddir + 180);
	var spawn = instance_create_layer(clamp(xx, 0, room_width), clamp(yy, 0, room_height), "Enemy", obj_e_spawn);
	spawn.enemy = type;
}