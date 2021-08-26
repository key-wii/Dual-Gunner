/// @description room speed to 40 then 60
room_speed = 40;
with (obj_controller) alarm_set(2, 5);
if (room != Room3) with (obj_camera_controller) {
	global.nextRoom = true;
	cameraX = 0;
	cameraY = 5;
	alarm_set(1, 6);
} else alarm_set(8, 10);