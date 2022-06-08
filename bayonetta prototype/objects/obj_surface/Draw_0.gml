/*if (surface_exists(damagemask))
    draw_surface(damagemask, 0, 0);
// Create new surface if DX destroys old surface due to port resize
else
	damagemask = surface_create(room_width, room_height);*/

if (surface_exists(damagemask)) {
    draw_surface(damagemask, 0, 0);
} else {
	surface_free(damagemask);
	damagemask = surface_create(room_width, room_height);
}