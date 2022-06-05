/// @description Check if player is holding input
event_inherited();
// Check if holding input
if (!keyboard_check(global.taunt)) {
	hold = false;
}