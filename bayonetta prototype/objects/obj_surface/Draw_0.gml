if (surface_exists(damagemask)) {
    draw_surface(damagemask, 0, 0);
} else {
	surface_free(damagemask);
	damagemask = surface_create(room_width, room_height);
}