function coll_destroy_bull_e() {
	if (place_meeting(x, y, obj_bull_e)) {
		with (obj_bull_e) {
			if (place_meeting(x, y, other.id)) {
				hp -= 1;
				if (hp > 0) exit;
				//splatterRadiusAt_e(x, y, 1, 1, 1);
				instance_change(obj_bull_explode, true);
				sprite_index = spr_bull_explode_e;
			}
		}
	}
}