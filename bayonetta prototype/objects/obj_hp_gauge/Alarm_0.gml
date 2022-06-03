/// @description Disappear
if (image_alpha <= .6) image_alpha -= .05;
image_alpha -= .01 + random(.01);
if (image_alpha <= 0) instance_destroy();
alarm_set(0, 1);