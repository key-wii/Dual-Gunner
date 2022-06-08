/// @description Click to go to end
var _clicked = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
var _released = mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right);

if (_clicked) {
	clicking = true;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (_released) {
	if (mouse_x >= x - sprite_width / 2 && mouse_x <= x + sprite_width / 2 &&
		mouse_y >= y - sprite_height / 2 && mouse_y <= y + sprite_height / 2 &&
		clicking) {
			if (!global.cutscene) {
				timeline_index = t_displayControls;
				timeline_running = true;
				timeline_position = 0;
			}
	}
	if (clicking)
		clicking = false;
}