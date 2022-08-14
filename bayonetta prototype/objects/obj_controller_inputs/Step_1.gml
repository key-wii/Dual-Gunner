/// @description 
if (!instance_exists(obj_player_move) || !instance_exists(obj_cursor) || !instance_exists(obj_player_grandparent)) exit;

var lAtkKeyboard = mb_left;
var lAtkGamepad1 = gp_shoulderlb;
var lAtkGamepad2 = gp_face3;
var rAtkKeyboard = mb_right;
var rAtkGamepad1 = gp_shoulderrb;
var rAtkGamepad2 = gp_face2;

var tauntGamepad = gp_shoulderr;
var blockGamepad = gp_shoulderl;
var dashGamepad1 = gp_face1;
var dashGamepad2 = gp_face4;

with (obj_player_move) {
	lInput = keyboard_check(ord("A")) ||
		gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) <= -.5 ||
		gamepad_button_check(4, gp_padl) || gamepad_axis_value(4, gp_axislh) <= -.5;
	rInput = keyboard_check(ord("D")) ||
		gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) >= .5 ||
		gamepad_button_check(4, gp_padr) || gamepad_axis_value(4, gp_axislh) >= .5;
	dInput = keyboard_check(ord("S")) ||
		gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) >= .5 ||
		gamepad_button_check(4, gp_padd) || gamepad_axis_value(4, gp_axislv) >= .5;
	uInput = keyboard_check(ord("W")) ||
		gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) <= -.5 ||
		gamepad_button_check(4, gp_padu) || gamepad_axis_value(4, gp_axislv) <= -.5;
}
with (obj_cursor) {
	if gamepad_is_connected(0) {
		gamepad_set_axis_deadzone(0, 0.05);
		haxis = gamepad_axis_value(0, gp_axislh);
		vaxis = gamepad_axis_value(0, gp_axislv);
	}
	if gamepad_is_connected(4) {
		gamepad_set_axis_deadzone(4, 0.05);
		haxis = gamepad_axis_value(4, gp_axisrh);
		vaxis = gamepad_axis_value(4, gp_axisrv);
	}
}
with (obj_player_grandparent) {
	lAtkInput = mouse_check_button(lAtkKeyboard) ||
		gamepad_button_check(0, lAtkGamepad1) || gamepad_button_check(0, lAtkGamepad2) ||
		gamepad_button_check(4, lAtkGamepad1) || gamepad_button_check(4, lAtkGamepad2);

	rAtkInput = mouse_check_button(rAtkKeyboard) ||
		gamepad_button_check(0, rAtkGamepad1) || gamepad_button_check(0, rAtkGamepad2) ||
		gamepad_button_check(4, rAtkGamepad1) || gamepad_button_check(4, rAtkGamepad2);

	lAtkInput_pressed = mouse_check_button_pressed(lAtkKeyboard) ||
		gamepad_button_check_pressed(0, lAtkGamepad1) || gamepad_button_check_pressed(0, lAtkGamepad2) ||
		gamepad_button_check_pressed(4, lAtkGamepad1) || gamepad_button_check_pressed(4, lAtkGamepad2);

	rAtkInput_pressed = mouse_check_button_pressed(rAtkKeyboard) ||
		gamepad_button_check_pressed(0, rAtkGamepad1) || gamepad_button_check_pressed(0, rAtkGamepad2) ||
		gamepad_button_check_pressed(4, rAtkGamepad1) || gamepad_button_check_pressed(4, rAtkGamepad2);

	AtkInput_released = mouse_check_button_released(lAtkKeyboard) ||
		gamepad_button_check_released(0, lAtkGamepad1) || gamepad_button_check_released(0, lAtkGamepad2) ||
		gamepad_button_check_released(4, lAtkGamepad1) || gamepad_button_check_released(4, lAtkGamepad2) ||
											  mouse_check_button_released(rAtkKeyboard) ||
		gamepad_button_check_released(0, rAtkGamepad1) || gamepad_button_check_released(0, rAtkGamepad2) ||
		gamepad_button_check_released(4, rAtkGamepad1) || gamepad_button_check_released(4, rAtkGamepad2);


	finisherInput = (keyboard_check(global.taunt) && keyboard_check(global.block)) ||
		(gamepad_button_check(0, tauntGamepad) && gamepad_button_check(0, blockGamepad)) ||
		(gamepad_button_check(4, tauntGamepad) && gamepad_button_check(4, blockGamepad));
	

	hyperInput = (mouse_check_button(lAtkKeyboard) && mouse_check_button(rAtkKeyboard)) ||
		(gamepad_button_check(0, gp_shoulderl) && gamepad_button_check(0, gp_shoulderr)) ||
		(gamepad_button_check(4, gp_shoulderl) && gamepad_button_check(4, gp_shoulderr));


	tauntInput = keyboard_check_pressed(global.taunt) ||
		gamepad_button_check(0, tauntGamepad) ||
		gamepad_button_check(4, tauntGamepad);

	counterInput = keyboard_check_pressed(global.block) ||
		gamepad_button_check(0, blockGamepad) ||
		gamepad_button_check(4, blockGamepad);
	
	dashInput = keyboard_check_pressed(global.dash) ||
		gamepad_button_check(0, dashGamepad1) || gamepad_button_check(0, dashGamepad2) ||
		gamepad_button_check(4, dashGamepad1) || gamepad_button_check(4, dashGamepad2);
}