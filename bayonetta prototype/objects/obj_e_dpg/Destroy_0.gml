if (hp > 0) exit;
instance_destroy(move);
var corpse = instance_create_layer(x, y, "Floor", obj_corpse);
corpse.image_xscale = image_xscale;
corpse.image_yscale = image_yscale;
ssSteady(20, 15, true, true);