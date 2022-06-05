/// @description Return to idle
image_xscale = 1;
image_yscale = 1;

with (obj_player_move) stop = false;
gun.visible = true;
move.arrow.visible = true;
cooldown_taunt = cooldownTauntMax;
if (rock > 0) alarm_set(2, 120); //Drop combo in 120 steps after long taunt
else alarm_set(2, 60); //Drop combo in 60 steps after short taunt
instance_change(obj_player, false);