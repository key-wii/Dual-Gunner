var dir = start_dir;
point_mouse();
if (direction > dir + 90) direction = dir;
else if (direction < dir - 90) direction = dir;
image_angle = direction;
start_dir = direction;

if (instance_exists(gun)) gun.dir_line = direction;
gun2dir = 30 * dir_face;
fireGun = 1;

last_shot = false;

alarm_set(0, 5);
alarm_set(1, 78);


just_reset = false;
bulls = 0;