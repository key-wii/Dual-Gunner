/// @description Counter Logic
if (grow) {
	image_xscale += .1;
	image_yscale += .1;
	if (image_xscale >= 1.2) grow = false;
} else if (timer < 6) {
	image_xscale -= .1;
	image_yscale -= .1;
} else if (image_xscale > 1) {
	image_xscale -= .1;
	image_yscale -= .1;
}

timer -= 1;
if (timer == 1 && big_deflect) alarm_set(3, 1); //0 frames of vulnerability after deflecting large attack
if (timer == 0) {
	image_xscale = 1;
	image_yscale = 1;
	just_countered = true;
	if (!big_deflect) {
		alarm_set(3, 10); //10 frames of vulnerability where player cannot act
		alarm_set(2, 1); //Reset combo from before counter
	}
	else alarm_set(2, 60); //Maintain combo for 60 more frames
	gun.visible = true;
	move.arrow.visible = true;
	instance_change(obj_player, false);
}

event_inherited();