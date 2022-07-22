/// @description Destroy lists & play sfx
if (!silent) sound_machine(snd_cannon_explosion);

ds_list_destroy(prevXs);
ds_list_destroy(prevYs);

var expl = instance_create_layer(x, y, "Bull", obj_explosion_punch);
expl.direction = direction;
expl.image_angle = expl.direction;