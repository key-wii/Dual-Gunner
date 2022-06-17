event_inherited();

//Draw second gun
var ttheta = direction + gun2dir;

var meleed = gun2dir != 0 && bulls > 0;
if (!meleed) ttheta += 60 * dir_face;

var _d = angle_difference(ttheta, prev_theta);
var _spd = 20;
if (_d >= 120) _spd = 80;
ttheta = clamp(prev_theta + _d, prev_theta - _spd, prev_theta + _spd);
prev_theta = ttheta;
	
with (gun) {
	var xx = owner.x + lengthdir_x(radius, ttheta);
	var yy = owner.y + lengthdir_y(radius, ttheta);
	
	draw_sprite_ext(spr_gun2, image_index, xx, yy,
		image_xscale, image_yscale, ttheta, c_white, image_alpha)
}