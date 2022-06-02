/// @description Windup (attacking arm)
if (dir_adjust < 85) {
	dir_adjust += 2;
	alarm_set(3, 1);
} else if (dir_adjust > 85) dir_adjust = 85;

var scale = clamp(image_xscale + .05, 1, 4.5);
image_xscale = scale;
image_yscale = scale;