/// @description Return to normal state
if (dizzy <= 0 && dizzy != -9999) {
	dizzy = 0;
	instance_change(object_orig, false);
	alarm_set(0, 40);
}
if (dizzy != -9999) dizzy--;