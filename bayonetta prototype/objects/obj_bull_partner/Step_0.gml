/*with (instance_place(x, y, obj_e_parent)) {
	hp -= other.pow;
	if (hp <= 0) instance_destroy();
	other.instance_destroy();
}*/

if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x,y,other.id)) {
			take_damage(other.pow, kbDir);
		}
		sound_machine(snd_hit_wave);
		ssSudden(1, 1, false, false);
		with (other) {
			image_xscale = 2;
			image_yscale = 2;
			speed = 0;
			instance_change(obj_bull_explode, true);
			sprite_index = spr_bull_explode_partner;
		}
	}
}