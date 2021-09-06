if (instance_exists(obj_splatter_controller)) {
    surface_set_target(obj_splatter_controller.surf);
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target(); 
	instance_destroy();
}