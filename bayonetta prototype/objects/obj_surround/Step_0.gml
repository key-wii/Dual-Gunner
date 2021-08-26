direction += 24 * dir_face;
image_angle = direction - (65 * dir_face);
dir += 24;
if (dir == 360) ds_list_clear(enemiesHit);
var owner_exists = instance_exists(owner);
if (dir >= 760) {
	if(owner_exists) with (owner) instance_change(obj_player, false);
	with (move) {
		topSpeed = topSpeed_default;
		burstSpeed = burstSpeed_default;
	}
	dash();
	
	instance_destroy();
}

var ddir = direction;
if (owner_exists) with (owner) { 
	x_adjust = lengthdir_x(1, ddir);
	x_adjust = lengthdir_y(1, ddir);
}

if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) && (ds_list_find_index(other.enemiesHit,id) == -1)) {
			take_damage(other.pow * 3, kbDir);
			ds_list_add(other.enemiesHit, id);
			sound_machine(snd_hit);
			ssSudden(1, 4, false, false);
			splatter(24, 24);
		}
	}
}
var xx = lengthdir_x(sprite_width / 4, direction);
var yy = lengthdir_y(sprite_width / 4, direction);
splatterRadiusAt(x + xx, y + yy, 5, 5, 2);

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			direction = ddir;
			image_angle = direction;
			speed = clamp(speed * 2, 1, sprite_width / 2);
			/*instance_change(obj_bull_deflected, true);
			wrap = false;*/
		}
	}
}

if (place_meeting(x, y, obj_wall)) {
	var xx = x + lengthdir_x(sprite_width / 2.5, direction);
	var yy = y + lengthdir_y(sprite_width / 2.5, direction);
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWallAt(spr_splatter_big, 1, other.x, other.y);
			splatterWallAt(spr_splatter, .1 + random(.2), xx + random(15), yy + random(15));
		}
	}
}

move_wrap(true, true, -70);