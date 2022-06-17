/// @description 
var size = ds_list_size(prevXs);
for (var i = size - 1; i >= 0; i--) {
	var scaleMod = (10 - i) * .05;
	draw_sprite_ext(sprite_index, image_index, prevXs[| i], prevYs[| i], image_xscale - scaleMod, image_yscale - scaleMod, image_angle, c_red, .1);
}

draw_self();