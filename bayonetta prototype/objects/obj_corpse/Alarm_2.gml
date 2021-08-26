/// @description decrease skull's xSscale
if (Sscale > 0) Sscale -= .04 / (Sscale / 2);
if (Sscale < 0) Sscale = 0;
else alarm_set(2, 1);
Sy += 5;