/// @description 
image_yscale = clamp(image_yscale * 2, 1, 50);
image_xscale = image_yscale;

pow = 10;
chainExplode = false;
alarm_set(0, 8);
enemiesHit = ds_list_create();

sound_machine(snd_explosion);