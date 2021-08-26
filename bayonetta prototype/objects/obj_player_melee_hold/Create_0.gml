var dir = start_dir;
point_mouse();
if (direction > dir + 90) direction = dir;
else if (direction < dir - 90) direction = dir;
image_angle = direction;
start_dir = direction;
if (instance_exists(partner)) partner.dir_line = direction;

last_shot = false;

alarm_set(0, 5);
alarm_set(1, 78);