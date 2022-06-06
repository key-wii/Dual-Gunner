/// @description Insert description here

var w = display_get_gui_width() * .25;
var space = 10;
var _hp = 0;
if (instance_exists(owner)) _hp = owner.hp;
//draw_healthbar(space, space, space + w, space + 30, _hp * 10, c_black, c_red, c_lime, 0, true, true);
var col1 = global.c_lightpink;
var col2 = global.c_pink;
var col3 = global.c_pink2;
if (_hp <= 1) {
	col1 = c_red;
	col2 = c_red;
	col3 = c_maroon;
}
else if (_hp <= 3) {
	col1 = c_yellow;
	col2 = c_orange;
	col3 = c_orange;
}
else if (_hp <= 5) {
	col1 = c_yellow;
	col2 = c_yellow;
	col3 = c_orange;
}
else if (_hp <= 9) {
	col1 = c_lime;
	col2 = c_lime;
	col3 = c_green;
}
if (_hp > 0) draw_rectangle_color(space, space, space + w * _hp / 10, space + 30, col1, col2, col2, col3, false);
for (var i = 1; i < _hp; i++) {
	draw_line_color(space + w * .1 * i, space - 1, space + w * .1 * i, space + 30, c_black, c_black);
}