/// @description Jump Logic
switch (up) {
	case true:
		image_xscale += .1;
		image_yscale += .1;
		if (image_xscale == 1.5) {
			up = false;
			wait = 5;
		}
		break;
	case false:
		if (wait > 0) {
			wait--;
			break;
		}
		image_xscale -= .1;
		image_yscale -= .1;
		if (image_xscale == 1) {
			layer = layer_get_id("Player");
			with (obj_player_move) topSpeed /= 1.25;
			//with (obj_player_move) topSpeed *= 2;
			cooldown_jump = cooldownJumpMax;
			instance_change(obj_player, false);
		}
		break;
}

event_inherited();
