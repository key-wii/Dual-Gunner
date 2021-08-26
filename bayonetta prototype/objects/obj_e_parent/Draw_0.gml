draw_self();

/*draw_set_halign(fa_middle);
draw_set_font(fnt_placeholder);
if (hp == maxHp) var col = c_lime;
else if (hp > maxHp / 2) var col = c_teal;
else if (hp > 10) var col = c_silver;
else					 var col = c_orange;
draw_text_colour_outline(x, y - 76, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
draw_text_colour_outline(x, y + 40, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);