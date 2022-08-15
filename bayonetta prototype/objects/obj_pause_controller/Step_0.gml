/// @description Unpause
if (pauseInput_pressed) {
	clicking = true;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (pauseInput_released) {
	if (clicking) {
			if (!global.cutscene) {
				unpause();
			}
	}
	if (clicking)
		clicking = false;
}