/// @description Display controls
instance_destroy(tbox);
tbox = instance_create_layer(0, 0, "UI", obj_display_controls);
tbox.owner = id;

nextBox = false;