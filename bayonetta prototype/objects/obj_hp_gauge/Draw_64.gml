/// @description 
// draw_circular_bar(x, y, value, max, colour, radius, transparency, width)
/*var xx = -global.cameraAdjust;
var yy = -global.cameraAdjust;
var quarter = maxHp / 4;
var hpG = ceil(clamp(hpDrawn, quarter * 3, quarter * 4) - quarter * 3);
var hpY = ceil(clamp(hpDrawn, quarter * 2, quarter * 3) - quarter * 2);
var hpO = ceil(clamp(hpDrawn, quarter * 1, quarter * 2) - quarter * 1);
var hpR = ceil(clamp(hpDrawn, quarter * 0, quarter * 1) - quarter * 0);
draw_circular_bar(x + xx, y + yy, 1, 1, c_white, r, image_alpha / 2, w); //gauge background
draw_circular_bar(x + xx, y + yy, clamp(hpR, 0, quarter), quarter, c_red, r, image_alpha, w);
draw_circular_bar(x + xx, y + yy, clamp(hpO, 0, quarter), quarter, c_orange, r, image_alpha, w);
draw_circular_bar(x + xx, y + yy, clamp(hpY, 0, quarter), quarter, c_yellow, r, image_alpha, w);
draw_circular_bar(x + xx, y + yy, clamp(hpG, 0, quarter), quarter, c_green, r, image_alpha, w);

draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_circle(x - global.cameraAdjust - 1, y - global.cameraAdjust - 1, r, true); //gauge outline
draw_set_alpha(1);