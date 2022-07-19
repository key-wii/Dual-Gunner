/// @description Rotate
if (instance_exists(obj_player_parent)) dir = obj_player_parent.dir_face;
image_angle += 6 * dir;
alarm_set(0, 10);