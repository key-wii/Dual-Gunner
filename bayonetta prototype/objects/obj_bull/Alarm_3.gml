if (image_yscale <= min_size + .2) exit;
image_yscale -= .05;
alarm_set(3, 1);