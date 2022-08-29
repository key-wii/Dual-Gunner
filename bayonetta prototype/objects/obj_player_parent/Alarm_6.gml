/// @description Melee L Input Buffering
if (dont_cancel || instance_exists(obj_melee) || instance_exists(obj_punch)) {
	alarm_set(6, 1);
	exit;
}
dir_face = 1;
melee();