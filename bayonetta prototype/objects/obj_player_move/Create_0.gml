can_move = true;
just_moved = false;
burst = false;
touching_wall = false;
alarm_reset = true;

recoil = 0;
stop = false;

dashing = false;
dashSpd = 19;
dash_tick = 0;
dashTickMax = 15;
dash_dir_change = 0;

topSpeed_default = 10;
burstSpeed_default = 11;
topSpeed = topSpeed_default;
burstSpeed = burstSpeed_default;

arrow = instance_create_layer(x, y, "Floor", obj_arrow_move);
arrow.owner = id;
arrow.radius = sprite_width - 10;

enum Hdir {
	left, right, na
}
enum Vdir {
	up, down, na
}

last_Hdir = Hdir.na;
last_Vdir = Vdir.na;

just_stopped = true;
xMove = 0;
yMove = 0;

last_x = x;
last_y = y;
//audio_listener_position(x, y, 0);