/// @description Reset damage_depth when no text is on screen
if (instance_number(obj_text_parent) == 0)
	global.damage_depth = 0;
else alarm_set(4, 1);