/// @description Return to normal state
dizzy--;
if (dizzy <= 0) {
	dizzy = 0;
	instance_change(object_orig, false);
}
