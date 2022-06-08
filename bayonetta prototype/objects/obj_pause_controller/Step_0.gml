/// @description Unpause
var _clicked = keyboard_check_pressed(global.pause1) || keyboard_check_pressed(global.pause2);
var _released = keyboard_check_released(global.pause1) || keyboard_check_released(global.pause2);

if (_clicked) {
	clicking = true;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (_released) {
	if (clicking) {
			if (!global.cutscene) {
				unpause();
			}
	}
	if (clicking)
		clicking = false;
}