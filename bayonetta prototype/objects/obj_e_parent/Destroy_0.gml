if (hp > 0) exit;
for(var i = 0; i < array_length(minions); i++) {
	destroy_minions(minions[i]);
}
instance_destroy(move);
instance_create_layer(x, y, "Floor", obj_corpse);
ssSteady(16, 15, true, true);