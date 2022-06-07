/// @description After win: Go to previous room by clicking anywhere
if (!global.victory) exit;

var _clicked = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
var _released = mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right);

if (_clicked) {
	clicking = true;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (_released) {
	if (mouse_x >= 0 && mouse_x <= room_width && mouse_y >= 0 && mouse_y < room_height &&
		clicking) {
			combat_end();
	}
	if (clicking)
		clicking = false;
}