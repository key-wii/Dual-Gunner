function pause() {
	if (!instance_exists(obj_player_grandparent)) exit;
	
	//get screenshot for pause menu background
	var width = surface_get_width(application_surface),
	height = surface_get_height(application_surface);
	global.PauseScreenShot =
		sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);
	
	room_persistent = true;
	audio_pause_all();
	
	//pause particle systems
	part_system_automatic_update(global.partSystem, false);
	part_system_automatic_update(global.partSystemAbove, false);
	part_system_automatic_draw(global.partSystem, false);
	part_system_automatic_draw(global.partSystemAbove, false);
	
	/*with (obj_tank_pilot) if (mouse_check_button(mb_right))
		flaming_while_pausing = true;*/

	/*room_set_height(Room_Pause, obj_camera_controller.cameraHeight);
	room_set_width(Room_Pause, obj_camera_controller.cameraWidth);*/

	/*var pauseSnd = true;
	if (global.level == 9 && global.checkpoint >= 5) pauseSnd = false;
	if (pauseSnd) audio_pause_sound(global.bgm);*/

	global.cursorX = obj_cursor.x;
	global.cursorY = obj_cursor.y;
	global.currentRoom = room;
	global.unpausing = true;
	room_goto(Room_Pause);
}

function unpause() {
	audio_resume_all();
	
	//unpause particle systems
	part_system_automatic_update(global.partSystem, true);
	part_system_automatic_update(global.partSystemAbove, true);
	part_system_automatic_draw(global.partSystem, true);
	part_system_automatic_draw(global.partSystemAbove, true);
	
	global.controllerDisconnected = false;
	room_goto(global.currentRoom);
}