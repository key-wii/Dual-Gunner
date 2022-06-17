/// @description DEBUG: Goto Next Room
if (room_exists(room_next(room))) {
	room_speed = 60;
	global.cutscene = false;
	room_goto_next();
}