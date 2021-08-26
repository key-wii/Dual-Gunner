direction += 15 * dir_face;
image_angle = direction;
dir += 15;
if (dir >= 80) {
	var owner_exists = instance_exists(owner);
	if (owner_exists) with (owner) instance_change(obj_player, false);
	else exit;
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
	dash();
	
	instance_destroy();
}

if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = point_direction(owner.x, owner.y, x, y);
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id) && (ds_list_find_index(other.enemiesHit,id) == -1)) {
			take_damage3(-point_distance(other.owner.x, other.owner.y, x, y) / 26, kbDir);
			ds_list_add(other.enemiesHit, id);
			ssSudden(4, 1, false, false);
			splatterRadiusAt(x, y, 6, 6, 12);
		}
	}
}

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction + 180;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 1;
			if (hp > 0) exit;
			direction = ddir;
			image_angle = direction;
			speed *= 2;
			instance_change(obj_bull_deflected, true);
			wrap = false;
		}
	}
}

if (place_meeting(x, y, obj_wall)) {
	if (dir_face > 0) var yy = -10;
	else var yy = 10;
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWallAtWide(spr_splatter_big, .6, .2, other.x, other.y + yy);
		}
	}
}