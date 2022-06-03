/// @description Move position total damage text will jump to next time enemy takes damage
textX_adjust = lengthdir_x(textLen_adjust, direction + 180);
textY_adjust = lengthdir_y(textLen_adjust, direction + 180);
textX = x + textX_adjust;
textY = y + textY_adjust;

hpX_adjust = lengthdir_x(hpLen_adjust, direction + 180);
hpY_adjust = lengthdir_y(hpLen_adjust, direction + 180);
hpX = x + hpX_adjust;
hpY = y + hpY_adjust;