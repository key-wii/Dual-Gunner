/// @description Check if player double tapped input
event_inherited();
// Check if holding input
/*if (!keyboard_check(global.dash)) {
	hold = false;
}*/
if (keyboard_check_pressed(global.dash)) {
	dashExplode = true;
}