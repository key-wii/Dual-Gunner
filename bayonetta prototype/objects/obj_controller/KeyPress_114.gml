/// @description DEBUG: Goto Next Room
if (room_exists(room_next(room))) {
	room_goto_next();
	room_speed = 60;
}