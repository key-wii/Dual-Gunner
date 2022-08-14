/// @description 
if (!instance_exists(obj_player_grandparent)) exit;
obj_player_grandparent.lAtkInput = mouse_check_button_pressed(mb_left) ||
	gamepad_button_check(0, gp_shoulderlb) || gamepad_button_check(0, gp_face3) ||
	gamepad_button_check(4, gp_shoulderlb) || gamepad_button_check(4, gp_face3);

obj_player_grandparent.rAtkInput = mouse_check_button_pressed(mb_right) ||
	gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(0, gp_face2) ||
	gamepad_button_check(4, gp_shoulderrb) || gamepad_button_check(4, gp_face2);


obj_player_grandparent.tauntInput = keyboard_check_pressed(global.taunt) ||
	gamepad_button_check(0, gp_shoulderr) ||
	gamepad_button_check(4, gp_shoulderr);

obj_player_grandparent.counterInput = keyboard_check_pressed(global.block) ||
	gamepad_button_check(0, gp_shoulderl) ||
	gamepad_button_check(4, gp_shoulderl);
	
obj_player_grandparent.dashInput = keyboard_check_pressed(global.dash) ||
	gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face4) ||
	gamepad_button_check(4, gp_face1) || gamepad_button_check(4, gp_face4);