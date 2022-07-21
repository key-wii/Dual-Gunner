/*with (instance_place(x, y, obj_e_parent)) {
	if (ds_list_find_index(other.enemiesHit, id) == -1) {
		hp -= other.pow;
		if (hp <= 0) instance_destroy();
		ds_list_add(other.enemiesHit, id);
	}
}*/

/*if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id) and (ds_list_find_index(other.enemiesHit,id) == -1)) {
			take_damage(other.pow + other.moreKnockBack, kbDir);
			ds_list_add(other.enemiesHit, id);
			sound_machine(snd_hit);
			ssSudden(1, 5, false, false);
			splatter(24, 28);
		}
	}
}*/
if (!global.unlockedDeflect) {
	coll_destroy_bull_e();
	exit;
}
var hyp = hyper;

if (place_meeting(x, y, obj_bull_e)) {
	var ddir = direction;
	with (obj_bull_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 1;
			if (hp > 0) exit;
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			direction = ddir;
			image_angle = direction;
			speed = clamp(speed * 2, 10, sprite_width * 1.5);
			var deflectObj = obj_bull_deflected;
			switch(object_index) {
				case obj_bull_e_bounce: deflectObj = obj_bull_bounce_deflected; break;
			}
			instance_change(deflectObj, true);
			if (hyp) {
				pow = floor(pow * 1.25 * 10);
				pow /= 10;
				image_xscale *= 1.25;
				image_yscale *= 1.25;
			}
		}
	}
}

if (place_meeting(x, y, obj_bull_cannonball_e)) {
	var ddir = direction;
	with (obj_bull_cannonball_e) {
		if (place_meeting(x,y,other.id)) {
			hp -= 2;
			if (hp > 0) {
				if (room_speed > 12) {
					room_speed = 12;
					with (obj_controller) alarm_set(2, 1);
				}
				exit;
			}
			direction = ddir;
			image_angle = direction
			x += lengthdir_x(30, ddir);
			y += lengthdir_y(30, ddir);
			speed = clamp(speed * 2, 30, sprite_width * 3);
			instance_change(obj_bull_cannonball_deflected, true);
			if (hyp) {
				pow = floor(pow * 1.25 * 10);
				pow /= 10;
				image_xscale *= 1.25;
				image_yscale *= 1.25;
			}
		}
	}
}

if (place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			if (object_get_parent(object_index) != obj_wall_nosplatter)
				splatterWallAt(spr_splatter_big, .85, other.x, other.y);
		}
	}
}

//move_wrap(true, true, -70);