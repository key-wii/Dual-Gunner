jump_move(move);

//Dash can be canceled into any of these
var block = cooldown_counter == 0 && keyboard_check_pressed(global.block);
var attackL = mouse_check_button_pressed(mb_left);
var attackR = mouse_check_button_pressed(mb_right);

timer--;
if (timer == 0) {
	with (move) {
		dashing = false;
		can_move = false;
	}
}
else if (timer <= -5 || block || attackL || attackR) {
	var mirror = instance_create_layer(x_orig, y_orig, "Floor", obj_mirror);
	mirror.direction = dir_orig + 90;
	mirror.x1 = x_orig;
	mirror.y1 = y_orig;
	mirror.x2 = x;
	mirror.y2 = y;
	with (mirror) {
		image_angle = direction;
		if (direction >= 180) direction -= 180;
		var ddis = point_distance(x1, y1, x2, y2) - sprite_width - 100;
		image_yscale = ddis / 20;
		if (image_yscale < 1) instance_destroy();
	}
	with (move) {
		can_move = true;
		dashSpd = 19;
	}
	cooldown_dash = cooldownDashMax;
	instance_change(obj_player, false);
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