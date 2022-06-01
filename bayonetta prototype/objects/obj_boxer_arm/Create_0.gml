/// @description 
hp = 1;
//hp = 80;
move = id;
weight = 9999;

event_inherited();

//bodyPart = true;
originAdjust = 15;
x_adjust = 0;
y_adjust = 0;

len_adjust = -sprite_width * 4;
dir_adjust = 0;
wiggle = 0;
wiggleUp = false;
wiggleMax = 10;

pow = 3;
lethal = false;
alreadyHit = false;

alarm_set(0, 1);
alarm_set(1, 1);