/// @description 
image_yscale = clamp(image_yscale * 2, 1, 50);
image_xscale = image_yscale;

pow = 0;
chainExplode = false;
alarm_set(0, 8);