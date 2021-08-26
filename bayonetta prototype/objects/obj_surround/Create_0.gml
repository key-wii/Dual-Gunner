dir = 0;

pow = 2;
enemiesHit = ds_list_create();

outer = instance_create_layer(x, y, "Floor", obj_surround_outer);
outer.owner = id;

sound_machine(snd_surround);