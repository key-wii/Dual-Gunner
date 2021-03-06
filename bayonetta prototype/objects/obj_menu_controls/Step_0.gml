/// @description Click to go to end
var _clicked = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
var _released = mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right);
var inRange = mouse_x >= x - sprite_width / 2 && mouse_x <= x + sprite_width / 2 &&
	mouse_y >= y - sprite_height / 2 && mouse_y <= y + sprite_height / 2;

if (_clicked && inRange && !global.cutscene) {
		clicking = true;
		sprite_index = spritePressed;
		image_speed = 0;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (_released) {
	if (clicking && inRange) {
			if (!global.cutscene) {
				timeline_index = t_displayControls;
				timeline_running = true;
				timeline_position = 0;
			}
	}
	if (clicking) {
		clicking = false;
		sprite_index = spriteDefault;
		image_speed = 1;
	}
}