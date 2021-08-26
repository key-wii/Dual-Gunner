/// @description X & Skull
if (scale != 0) draw_sprite_ext(spr_X, 0, x - 100, y - 100, scale, scale, 0, c_white, .8);
if (Sscale != 0) draw_sprite_ext(spr_X_skull, 0, x - 100, y - 100 + Sy, Sscale, 1, 0, c_white, .8);


//Draw on screen when player wins
if (!win) exit;
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_text_colour_outline(room_width / 2 - 100, room_height / 2 - 100, "You Win!", c_lime, c_yellow, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);