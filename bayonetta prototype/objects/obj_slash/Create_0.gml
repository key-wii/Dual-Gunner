image_xscale = 2;
image_yscale = 2;

pow = 1;
enemiesHit = ds_list_create();
first = false;

//moreKnockBack = 0;

if (instance_exists(obj_player_move)) with (obj_player_move) dashing = false;