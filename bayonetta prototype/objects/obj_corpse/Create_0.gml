sound_machine(snd_dead);
if (instance_number(obj_e_parent) > 1) {
	if (room_speed > 20) {
		room_speed = 20;
		with (obj_controller) alarm_set(2, 1);
	}
} else {
	if (room_speed > 10) room_speed = 10;
	var ag = 1;
	with (obj_controller) if (alarm_get(2) > 0) ag = alarm_get(2);
	alarm_set(4, ag);
}

image_alpha = .2;
alarm_set(0, 1);

scale = 1;
Sscale = 1;
Sy = 0;
alarm_set(1, 25);

//splatter_e(20, 20);
alarm_set(3, 1);


if (obj_mp.visible) mpAdd(1);
win = false;