function explode_nonlethal(ddir) {
	room_speed = 20;
	with (obj_controller) alarm_set(2, 1);
	var expl = instance_create_layer(x, y, "Above", obj_explosion_decorative);
	expl.direction = ddir;
	expl.image_angle = expl.direction;
}