/// @description Input Checking & Handling

var gamepadCheck0 = gamepad_is_connected(0);
var gamepadCheck4 = gamepad_is_connected(4);
controllerConnected = gamepadCheck0 || gamepadCheck4;
if (!global.cutscene && prev_controllerConnected && !controllerConnected && room != Room_Pause) {
	global.controllerDisconnected = true;
	pause();
}
if (!prev_controllerConnected && controllerConnected) global.controllerDisconnected = false;
prev_controllerConnected = controllerConnected;

var pauseKeyboard1 = vk_enter;
var pauseKeyboard2 = vk_escape;
var pauseGamepad1 = gp_start;
var pauseGamepad2 = gp_select;

var confirmKeyboard1 = mb_left;
var confirmKeyboard2 = mb_right;
var confirmGamepad1 = gp_face1;
var confirmGamepad2 = gp_face2;

var lMoveKeyboard = ord("A");
var rMoveKeyboard = ord("D");
var dMoveKeyboard = ord("S");
var uMoveKeyboard = ord("W");
var lMoveGamepad = gp_padl;
var rMoveGamepad = gp_padr;
var dMoveGamepad = gp_padd;
var uMoveGamepad = gp_padu;

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
var dashGamepad3 = gp_stickl;
var dashGamepad4 = gp_stickr;

var finisherGamepadL = gp_shoulderl;
var finisherGamepadR = gp_shoulderr;
var hyperGamepadA = gp_shoulderlb;
var hyperGamepadB = gp_shoulderrb;

if (instance_exists(obj_controller)) with (obj_controller) {
	pauseInput_pressed = keyboard_check_pressed(pauseKeyboard1) || keyboard_check_pressed(pauseKeyboard2) ||
		gamepad_button_check_pressed(0, pauseGamepad1) || gamepad_button_check_pressed(0, pauseGamepad2) ||
		gamepad_button_check_pressed(4, pauseGamepad1) || gamepad_button_check_pressed(4, pauseGamepad2);
	pauseInput_released = keyboard_check_released(pauseKeyboard1) || keyboard_check_released(pauseKeyboard2) ||
		gamepad_button_check_released(0, pauseGamepad1) || gamepad_button_check_released(0, pauseGamepad2) ||
		gamepad_button_check_released(4, pauseGamepad1) || gamepad_button_check_released(4, pauseGamepad2);
}
if (instance_exists(obj_clickable_parent)) with (obj_clickable_parent) {
	confirmInput_pressed = mouse_check_button_pressed(confirmKeyboard1) || mouse_check_button_pressed(confirmKeyboard2) ||
		gamepad_button_check_pressed(0, confirmGamepad1) || gamepad_button_check_pressed(0, confirmGamepad2) ||
		gamepad_button_check_pressed(4, confirmGamepad1) || gamepad_button_check_pressed(4, confirmGamepad2);
	confirmInput_released = mouse_check_button_released(confirmKeyboard1) || mouse_check_button_released(confirmKeyboard2) ||
		gamepad_button_check_released(0, confirmGamepad1) || gamepad_button_check_released(0, confirmGamepad2) ||
		gamepad_button_check_released(4, confirmGamepad1) || gamepad_button_check_released(4, confirmGamepad2);
}
if (instance_exists(obj_player_move)) with (obj_player_move) {
	lInput = keyboard_check(lMoveKeyboard) ||
		gamepad_button_check(0, lMoveGamepad) || gamepad_axis_value(0, gp_axislh) <= -.5 ||
		gamepad_button_check(4, lMoveGamepad) || gamepad_axis_value(4, gp_axislh) <= -.5;
	rInput = keyboard_check(rMoveKeyboard) ||
		gamepad_button_check(0, rMoveGamepad) || gamepad_axis_value(0, gp_axislh) >= .5 ||
		gamepad_button_check(4, rMoveGamepad) || gamepad_axis_value(4, gp_axislh) >= .5;
	dInput = keyboard_check(dMoveKeyboard) ||
		gamepad_button_check(0, dMoveGamepad) || gamepad_axis_value(0, gp_axislv) >= .5 ||
		gamepad_button_check(4, dMoveGamepad) || gamepad_axis_value(4, gp_axislv) >= .5;
	uInput = keyboard_check(uMoveKeyboard) ||
		gamepad_button_check(0, uMoveGamepad) || gamepad_axis_value(0, gp_axislv) <= -.5 ||
		gamepad_button_check(4, uMoveGamepad) || gamepad_axis_value(4, gp_axislv) <= -.5;
}
if (instance_exists(obj_cursor)) with (obj_cursor) {
	if (gamepadCheck0) {
		gamepad_set_axis_deadzone(0, 0.05);
		haxis = gamepad_axis_value(0, gp_axisrh);
		vaxis = gamepad_axis_value(0, gp_axisrv);
	}
	if (gamepadCheck4) {
		gamepad_set_axis_deadzone(4, 0.05);
		haxis = gamepad_axis_value(4, gp_axisrh);
		vaxis = gamepad_axis_value(4, gp_axisrv);
	}
}
if (instance_exists(obj_pause_cursor)) with (obj_pause_cursor) {
	if (gamepadCheck0) {
		gamepad_set_axis_deadzone(0, 0.05);
		haxis2 = gamepad_axis_value(0, gp_axislh);
		vaxis2 = gamepad_axis_value(0, gp_axislv);
	}
	if (gamepadCheck4) {
		gamepad_set_axis_deadzone(4, 0.05);
		haxis2 = gamepad_axis_value(4, gp_axislh);
		vaxis2 = gamepad_axis_value(4, gp_axislv);
	}
}
if (instance_exists(obj_player_grandparent)) with (obj_player_grandparent) {
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


	finisherInput = (keyboard_check(global.block) && keyboard_check(global.taunt)) ||
		(gamepad_button_check(0, finisherGamepadL) && gamepad_button_check(0, finisherGamepadR)) ||
		(gamepad_button_check(4, finisherGamepadL) && gamepad_button_check(4, finisherGamepadR));
	finisherPunchLInput_pressed = keyboard_check_pressed(global.block) ||
		gamepad_button_check_pressed(0, finisherGamepadL) ||
		gamepad_button_check_pressed(4, finisherGamepadL);
	finisherPunchRInput_pressed = keyboard_check_pressed(global.taunt) ||
		gamepad_button_check_pressed(0, finisherGamepadR) ||
		gamepad_button_check_pressed(4, finisherGamepadR);
	

	hyperInput = (mouse_check_button(lAtkKeyboard) && mouse_check_button(rAtkKeyboard)) ||
		(gamepad_button_check(0, hyperGamepadA) && gamepad_button_check(0, hyperGamepadB)) ||
		(gamepad_button_check(4, hyperGamepadA) && gamepad_button_check(4, hyperGamepadB));
	AtkInput_released = mouse_check_button_released(lAtkKeyboard) ||
		gamepad_button_check_released(0, lAtkGamepad1) || gamepad_button_check_released(0, lAtkGamepad2) ||
		gamepad_button_check_released(4, lAtkGamepad1) || gamepad_button_check_released(4, lAtkGamepad2) ||
		mouse_check_button_released(rAtkKeyboard) ||
		gamepad_button_check_released(0, rAtkGamepad1) || gamepad_button_check_released(0, rAtkGamepad2) ||
		gamepad_button_check_released(4, rAtkGamepad1) || gamepad_button_check_released(4, rAtkGamepad2);


	tauntInput = keyboard_check(global.taunt) ||
		gamepad_button_check(0, tauntGamepad) ||
		gamepad_button_check(4, tauntGamepad);
	tauntInput_pressed = keyboard_check_pressed(global.taunt) ||
		gamepad_button_check_pressed(0, tauntGamepad) ||
		gamepad_button_check_pressed(4, tauntGamepad);

	counterInput_pressed = keyboard_check_pressed(global.block) ||
		gamepad_button_check_pressed(0, blockGamepad) ||
		gamepad_button_check_pressed(4, blockGamepad);
	
	dashInput = keyboard_check(global.dash) ||
		gamepad_button_check(0, dashGamepad1) || gamepad_button_check(0, dashGamepad2) ||
		gamepad_button_check(0, dashGamepad3) || gamepad_button_check(0, dashGamepad4) ||
		gamepad_button_check(4, dashGamepad1) || gamepad_button_check(4, dashGamepad2) ||
		gamepad_button_check(4, dashGamepad3) || gamepad_button_check(4, dashGamepad4);
	dashInput_pressed = keyboard_check_pressed(global.dash) ||
		gamepad_button_check_pressed(0, dashGamepad1) || gamepad_button_check_pressed(0, dashGamepad2) ||
		gamepad_button_check_pressed(0, dashGamepad3) || gamepad_button_check_pressed(0, dashGamepad4) ||
		gamepad_button_check_pressed(4, dashGamepad1) || gamepad_button_check_pressed(4, dashGamepad2) ||
		gamepad_button_check_pressed(4, dashGamepad3) || gamepad_button_check_pressed(4, dashGamepad4);
}