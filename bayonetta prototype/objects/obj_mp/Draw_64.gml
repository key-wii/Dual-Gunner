/// @description 
/*var grow = 0;
//var grow = 2 * mp;
var ran_r = 0;
var ran_t = 0;
if (hyper) {
	ran_r = irandom(3); //random radius
	ran_t = irandom(359); //random theta
}
var xx = x - global.cameraAdjust + lengthdir_x(ran_r, ran_t);
var yy = y - global.cameraAdjust + lengthdir_y(ran_r, ran_t);
var col = c_blue;
if (hyper || mp >= 4) var col = c_aqua;
// draw_circular_bar(x, y, value, max, colour, radius, transparency, width)
draw_circular_bar(xx, yy, 1, 1, c_white, r + grow, image_alpha * .5, w + grow); //gauge background
draw_circular_bar(xx, yy, floor(mp), maxMp, col, r + grow, image_alpha * .8, w + grow);


draw_set_color(c_white);
draw_set_alpha(image_alpha);

draw_circle(xx - 1, yy - 1, r + grow, true); //gauge outline

draw_line(xx - r, yy, xx - 1 + r, yy); //hor line
draw_line(xx - 1, yy - 1 - r, xx - 1, yy + r); //vert line
var xx1 = lengthdir_x(r, 45);
var yy1 = lengthdir_y(r, 45);
draw_line(xx - xx1, yy - yy1, xx + xx1, yy + yy1); //diag line
var xx2 = lengthdir_x(r, -45);
var yy2 = lengthdir_y(r, -45);
draw_line(xx - xx2, yy - yy2, xx + xx2, yy + yy2); //diag line

draw_set_alpha(1);