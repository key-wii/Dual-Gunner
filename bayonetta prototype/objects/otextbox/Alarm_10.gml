/// @description Move up
var _final_y = h - (h / 16) + space;
boxTop = clamp(boxTop - 6, _final_y, 9999);

if (boxTop == _final_y) {
	y = boxTop - 10;
	alarm_set(11, 1);
}
else alarm_set(10, 1);