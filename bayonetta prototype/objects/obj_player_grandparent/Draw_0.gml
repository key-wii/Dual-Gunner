//Draw diamond around enemy capable of being Finished
draw_set_circle_precision(4);
draw_set_color(c_fuchsia);
if (instance_exists(enemyToFinish)) {
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 1, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 2, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 3, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 6, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 7, true);
}
draw_set_color(c_white);
draw_set_circle_precision(64);

//Draw second gun
var ttheta = direction + gun2dir;
if (gun2dir != 0 && bulls > 0) with (gun) {
	if (ttheta >= 360) ttheta -= 360;
	
	var xx = owner.x + lengthdir_x(radius, ttheta);
	var yy = owner.y + lengthdir_y(radius, ttheta);
	
	draw_sprite_ext(sprite_index, image_index, xx, yy,
	image_xscale, image_yscale, ttheta, c_white, image_alpha)
}

/*draw_set_halign(fa_middle);
draw_set_font(fnt_placeholder);
if (hp > 9) var col = c_lime;
else if (hp > 5) var col = c_green;
else if (hp > 2) var col = c_yellow;
else					 var col = c_red;
draw_text_colour_outline(x, y - 76, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
draw_text_colour_outline(x, y + 40, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);