//draw cursor
draw_sprite_ext(sprite_index, image_index, mouse_x, mouse_y,
	image_xscale, image_yscale, 120, c_white, 1);

//scanlines
//for (i = 0; i <= 800; i += 4) draw_sprite(scanline, 0, view_xview, view_yview + i);