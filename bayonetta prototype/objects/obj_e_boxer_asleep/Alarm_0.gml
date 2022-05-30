/// @description Zzz...
instance_create_layer(x + sprite_width / 4, y - sprite_height / 4, "Above", obj_Z);
Z++;
if (Z >= 3) {
	Z = 0;
	alarm_set(0, 60 + irandom(10));
} else alarm_set(0, 16);