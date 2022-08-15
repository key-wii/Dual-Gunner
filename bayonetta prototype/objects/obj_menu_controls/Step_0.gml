/// @description Click to go to end
var mx = obj_cursor.x;
var my = obj_cursor.y;
var inRange = mx >= x - sprite_width / 2 && mx <= x + sprite_width / 2 &&
	my >= y - sprite_height / 2 && my <= y + sprite_height / 2;

if (confirmInput_pressed && inRange && !global.cutscene) {
		clicking = true;
		sprite_index = spritePressed;
		image_speed = 0;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (confirmInput_released) {
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