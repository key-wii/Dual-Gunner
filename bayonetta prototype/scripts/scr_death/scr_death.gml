function death () {
	//if (!global.death) exit;
	room_speed = 20;
	with (obj_controller) alarm_set(3, 6);
	instance_destroy();
}