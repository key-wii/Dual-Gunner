jump_move(move);

//Check if player double tapped input
/*if (timer > move.dashTickMax - 4 && dashInput_pressed) {
	dashExplode = true;
}*/
//Input buffer next dash
if (timer <= 8 && dashInput_pressed) {
	dashSkill();
}

//Dash can be canceled into any of these
var block = cooldown_counter == 0 && counterInput_pressed;
var attackL = lAtkInput_pressed;
var attackR = rAtkInput_pressed;
if (hyper_pressed > 0) {
	attackL = false;
	attackR = false;
}

timer--;
if (timer == 0) {
	with (move) {
		dashing = false;
		can_move = false;
	}
}
else if (timer <= -5 || block || attackL || attackR) {
	var mirror = instance_create_layer(x_orig, y_orig, "Floor", obj_mirror);
	mirror.owner = id;
	mirrors[| ds_list_size(mirrors)] = mirror;
	mirror.direction = dir_orig_move + 90;
	mirror.x1 = x_orig;
	mirror.y1 = y_orig;
	mirror.x2 = x;
	mirror.y2 = y;
	with (mirror) {
		image_angle = direction;
		if (direction >= 180) {
			direction -= 180;
			flipped = true;
		}
		var ddis = point_distance(x1, y1, x2, y2) - sprite_width - 100;
		image_yscale = ddis / 20;
		if (image_yscale < 1) instance_destroy();
	}
	if (hyper) with (mirror) {
		hyper = true;
		image_xscale *= 1.25;
	}
	dashToIdle();
}
else if (timer < 0) direction += 5 * dir_face;
else direction += (50 - timer) * dir_face;
image_angle = direction;

if (block) {
	instance_change(obj_player_counter, true);
}
else if (attackL) {
	dir_face = 1;
	melee();
}
else if (attackR) {
	dir_face = -1;
	melee();
}