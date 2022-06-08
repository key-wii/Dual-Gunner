//with (obj_menu_text) charCount = 99999;

with (obj_pause_controller) {
	if (exitTextBox == noone) {
		exitTextBox = instance_create_layer(-500, -500, "UI", obj_exit_text);
		if (global.currentRoom == room_menu)
			exitTextBox.menu = true;
		else if (global.currentRoom == room_tutorial)
			exitTextBox.tutorial = true;
	} else {
		instance_destroy(exitTextBox);
		exitTextBox = noone;
	}
}