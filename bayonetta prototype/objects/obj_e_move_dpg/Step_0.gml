/// @description Dash
if (dashing) {
	var xx = lengthdir_x(dashSpd, direction);
	var yy = lengthdir_y(dashSpd, direction);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
	dash_tick++;
	if (dash_tick >= 5 && dash_dir_change < 2) dash_mid();
	if (dash_tick == dashTickMax) {
		with (owner) {
			var player = obj_player_move;
			if (instance_exists(player)) {
				var ddir = point_direction(x, y, player.x, player.y);
				direction = clamp(ddir, start_dir - 300, start_dir + 300);
				image_angle = direction;
			}
			if (instance_exists(gun)) gun.dir_line = direction;
		}
		dashing = false;
		dash_tick = 0;
		dash_dir_change = 0;
	}
	move_wrap(true, true, 30);
	
	if (dash_tick mod 3 == 0) {
		part_type_direction(global.partDash, direction, direction, 0, .1);
		part_particles_create(global.partSystem, x, y, global.partDash, 1);
	}
	alarm_set(0, 2);
}