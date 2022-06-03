/// @description 
//var changeSpd = maxHp / 100;
var changeSpd = maxHp / 80;
if (hpDrawn > hp) hpDrawn -= changeSpd;
else if (hpDrawn < hp) hpDrawn += changeSpd;
if (hpDrawn > hp - changeSpd && hpDrawn < hp + changeSpd) hpDrawn = hp;