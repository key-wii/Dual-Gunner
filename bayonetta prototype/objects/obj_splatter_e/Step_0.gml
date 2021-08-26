// Thin out the blood as it spreads
if (movSpd > 0) {
	image_xscale -= sizeChange;
	image_yscale -= sizeChange;
}

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if (movSpd > 0)
    image_alpha -= random_range(0.05, 0.1);

// Slow down the blood with friction
//movSpd = Approach(movSpd, 0, fric);
movSpd -= fric * 30;
if (movSpd < 0) movSpd = 0;

// I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
if (instance_exists(obj_splatter_controller)) {
    surface_set_target(obj_splatter_controller.surf);
    draw_sprite_ext(spr_splatter_e, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target();  
}

// Once the blood thins away to nothing, destroy it
// Destroy self
if (image_xscale <= 0)
    instance_destroy();