var ttheta = direction + gun2dir;
if (gun2dir != 0 && bulls > 0) with (gun) {
	if (ttheta >= 360) ttheta -= 360;
	
	var xx = owner.x + lengthdir_x(radius, ttheta);
	var yy = owner.y + lengthdir_y(radius, ttheta);
	
	draw_sprite_ext(sprite_index, image_index, xx, yy,
	image_xscale, image_yscale, ttheta, c_white, image_alpha)
}

//DEBUG
draw_set_alpha(.6);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_set_color(c_white);
draw_text(x, y - 140, "combo");
if (alarm_get(2) > 0 && alarm_get(2) < 12) draw_set_alpha(alarm_get(2) * .05);
var size = ds_list_size(combo_now);
for (var i = 0; i < size; i++)
	draw_text((x - (size * 32) + 64 * i) + 32, y - 100, string(combo_now[| i]));
/*if (first_hit == L) draw_text(x, y - 60, "first strike: " + "L");
if (first_hit == R) draw_text(x, y - 60, "first strike: " + "R");
draw_text(x, y + 100, "bulls: " + string(bulls));*/
draw_set_alpha(1);

/*draw_set_halign(fa_middle);
draw_set_font(fnt_placeholder);
if (hp > 9) var col = c_lime;
else if (hp > 5) var col = c_green;
else if (hp > 2) var col = c_yellow;
else					 var col = c_red;
draw_text_colour_outline(x, y - 76, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
draw_text_colour_outline(x, y + 40, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);