/// @description Hand appear
direction = dir_orig;
hand = 0;
alarm_set(1, 0);
if (hold) alarm_set(5, 20);
else alarm_set(3, 20);