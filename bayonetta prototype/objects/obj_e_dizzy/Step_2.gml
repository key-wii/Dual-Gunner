/// @description Return to normal state
if (dizzy <= 0 && dizzy != -9999) {
	dizzy = 0;
	instance_change(object_orig, false);
}
if (dizzy != -9999) dizzy--;