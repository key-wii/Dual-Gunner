function splatterWall(splat, scale) {
	var xx = x + lengthdir_x(sprite_width / 2, point_direction(x, y, other.x, other.y));
	var yy = y + lengthdir_y(sprite_width / 2, point_direction(x, y, other.x, other.y));
			
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = scale;
		var yScale = xScale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, c_white, alpha);
		draw_sprite_clip_ext(splat, 0, xx, yy, xScale, yScale, c_white, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
        
		surface_reset_target();
	}
}

function splatterWallAt(splat, scale, xx, yy) {		
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = scale;
		var yScale = xScale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, c_white, alpha);
		draw_sprite_clip_ext(splat, 0, xx, yy, xScale, yScale, c_white, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
        
		surface_reset_target();
	}
}

function splatterWallAtWide(splat, xscale, yscale, xx, yy) {		
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = xscale;
		var yScale = yscale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, c_white, alpha);
		draw_sprite_clip_ext(splat, 0, xx, yy, xScale, yScale, c_white, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
        
		surface_reset_target();
	}
}