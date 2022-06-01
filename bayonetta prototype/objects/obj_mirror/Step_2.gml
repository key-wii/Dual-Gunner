/// @description Decrement Timer
timer--;
if (timer <= 0) image_alpha -= .02;
if (image_alpha <= 0) instance_destroy();

