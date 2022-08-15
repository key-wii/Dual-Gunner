/// @description Click to go to next textbox
if (confirmInput_pressed) {
	clicking = true;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (confirmInput_released) {
	if (mouse_x >= 0 && mouse_x <= room_width && mouse_y >= 0 && mouse_y < room_height &&
		clicking) {
			if (image_alpha == 1) {
				with (owner) nextBox = true;
			} else {
				image_alpha = 1;
				box_w = final_box_w;
			}
	}
	if (clicking)
		clicking = false;
}