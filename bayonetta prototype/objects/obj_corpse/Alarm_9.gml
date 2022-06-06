/// @description Goto Next Room
if (room_exists(room_next(room))) with (obj_camera_controller) {
	global.nextRoom = true;
	cameraX = 0;
	cameraY = 5;
	alarm_set(1, 6);
} else alarm_set(8, 10);