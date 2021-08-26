function draw_sprite_clip(sprite, subimg, x, y, clipx, clipy, clipw, cliph) {
	/// draw_sprite_clip(sprite, subimg, x, y, clipx, clipy, clipw, cliph)
	var s = sprite;
	var sw = sprite_get_width(s);
	var sh = sprite_get_height(s);
	var sx = sprite_get_xoffset(s);
	var sy = sprite_get_yoffset(s);
	var si = subimg;
	var _x = x;
	var _y = y;
	var cx1 = clipx;
	var cy1 = clipy;
	var cx2 = cx1 + clipw;
	var cy2 = cy1 + cliph;
	//
	var bx1 = _x - sprite_get_xoffset(s);
	var by1 = _y - sprite_get_yoffset(s);
	var bx2 = bx1 + sprite_get_width(s);
	var by2 = by1 + sprite_get_height(s);
	//
	switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2)) {
	case 1:
	    draw_sprite(s, si, _x, _y);
	    return true;
	case 2:
	    var lx1 = max(0, cx1 - bx1);
	    var ly1 = max(0, cy1 - by1);
	    var lx2 = sw + min(0, cx2 - bx2);
	    var ly2 = sh + min(0, cy2 - by2);
	    draw_sprite_part(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1, _x + lx1 - sx, _y + ly1 - sy);
	    return true;
	}
	return false;
}

function draw_sprite_clip_ext(sprite, subimg, x, y, xscale, yscale, color, alpha, rx, ry, rw, rh) {
	/// draw_sprite_clip_ext(sprite, subimg, x, y, xscale, yscale, color, alpha, rx, ry, rw, rh)
	var s = sprite;
	var sw = sprite_get_width(s);
	var sh = sprite_get_height(s);
	var sx = sprite_get_xoffset(s);
	var sy = sprite_get_yoffset(s);
	var si = subimg;
	var _x = x;
	var _y = y;
	var mx = xscale;
	var my = yscale;
	var sc = color;
	var sa = alpha;
	var cx1 = rx;
	var cy1 = ry;
	var cx2 = cx1 + rw;
	var cy2 = cy1 + rh;
	//
	var bx1 = _x - sprite_get_xoffset(s) * mx;
	var by1 = _y - sprite_get_yoffset(s) * my;
	var bx2 = bx1 + sprite_get_width(s) * mx;
	var by2 = by1 + sprite_get_height(s) * my;
	//
	switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2)) {
	case 1:
	    draw_sprite_ext(s, si, _x, _y, mx, my, 0, sc, sa);
	    return true;
	case 2:
	    if (mx == 0 || my == 0) return true;
	    var lx1 = max(0, cx1 - bx1) / mx;
	    var ly1 = max(0, cy1 - by1) / my;
	    var lx2 = sw + min(0, cx2 - bx2) / mx;
	    var ly2 = sh + min(0, cy2 - by2) / my;
	    draw_sprite_part_ext(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1,
	        _x + (lx1 - sx) * mx, _y + (ly1 - sy) * my,
	        mx, my, sc, sa);
	    return true;
	}
	return false;
}