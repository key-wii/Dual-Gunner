event_inherited();
//Check if holding input
/*if (!keyboard_check(global.dash)) {
	hold = false;
}*/

//Check if player double tapped input
if (timer > move.dashTickMax - 4 && keyboard_check_pressed(global.dash)) {
	dashExplode = true;
}

//Input buffer next dash
if (timer <= 8 && keyboard_check_pressed(global.dash)) {
	dashSkill();
}