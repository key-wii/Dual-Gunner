// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dizzy_set(dz, sp) {
	dir_ran = irandom(1);
	if (dir_ran == 0) dir_ran = -1;
	dizzy = dz;
	spin = sp;
	if (object_index != dizzyState) object_orig = object_index;
	var spr = sprite_index;
	instance_change(dizzyState, true);
	sprite_index = spr;
}