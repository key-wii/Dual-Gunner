//Check if holding input
event_inherited();
if (!keyboard_check(global.dash)) {
	hold = false;
}

//Input buffer next dash
if (timer <= 8 && keyboard_check_pressed(global.dash)) {
	dashSkill();
}