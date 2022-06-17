function draw_body() {
	//Draw cape
	var _d = angle_difference(image_angle, prev_ang);
	var dir = clamp(prev_ang + _d, prev_ang - 15, prev_ang + 15);
	draw_sprite_ext(spr_cape, 0, x, y,
		image_xscale, image_yscale, dir, c_white, 1);

	//Draw heart
	/*draw_sprite_ext(spr_heart, 0, x, y,
		image_xscale, image_yscale, dir, c_white, 1);*/
}