/// @description 
var xx = room_width / 2 - global.cameraAdjust;
var yy = room_height * .75 - global.cameraAdjust;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
var col1 = c_aqua;
var col2 = c_blue;
var colOl = c_black;
// x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle
draw_text_colour_outline(xx, yy, text1, col1, col2, image_alpha, colOl, colOl, image_alpha * .75, 4, 4, image_xscale, image_yscale, image_angle);
var col1 = c_fuchsia;
var col2 = c_aqua;
draw_text_colour_outline(xx, yy + 38, text2, col1, col2, image_alpha, colOl, colOl, image_alpha * .75, 4, 4, image_xscale, image_yscale, image_angle);