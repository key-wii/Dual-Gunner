/// @description Uncomment this to add floor splatter back in

/*if (surface_exists(surf))				UNCOMMENT THESE LINES
    draw_surface(surf, 0, 0);
// Create new surface if DX destroys old surface due to port resize
else
    surf = surface_create(room_width, room_height);
draw_set_alpha(1);*/

// THEN COMMENT BELOW LINE OUT
if (!surface_exists(surf)) surf = surface_create(room_width, room_height);