if (surface_exists(surf))
    draw_surface(surf, 0, 0);
// Create new surface if DX destroys old surface due to port resize
else
    surf = surface_create(room_width, room_height);



/*if (!surface_exists(mask_surface)) {
    // create the mask-surface, if needed
    mask_surface = surface_create(room_width, room_height);
    //mask_surface = surface_create(256, 256);
    surface_set_target(mask_surface);
    draw_clear(c_black);
    gpu_set_blendmode(bm_subtract);
    // cut out shapes out of the mask-surface:
    draw_circle(room_width / 2, room_width / 2, 700, false);
    //
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
}
if (!surface_exists(clip_surface)) {
    // create the clip-surface, if needed
	clip_surface = surface_create(room_width, room_height);
    //clip_surface = surface_create(256, 256);
}
// start drawing:
surface_set_target(clip_surface);
draw_clear_alpha(c_black, 0);
// draw things relative to clip-surface:
draw_circle(mouse_x - clipx, mouse_y - clipy, 10, false);
// cut out the mask-surface from it:
gpu_set_blendmode(bm_subtract);
draw_surface(mask_surface, 0, 0);
gpu_set_blendmode(bm_normal);
// finish and draw the clip-surface itself:
surface_reset_target();
draw_surface(clip_surface, clipx, clipy);