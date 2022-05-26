sprite_default = sprite_index;
spriteHurt = spr_hurt;
hp = 10;

y = room_height / 2;
x_adjust = 0;
y_adjust = 0;

dir_face = -1;

//if (!instance_exists(obj_player_move))
move = instance_create_layer(x, y, "Player", obj_player_move);
move.owner = id;

//if (!instance_exists(obj_partner))
/*partner = instance_create_layer(x, y, "Player", obj_partner);
partner.hp = hp;
partner.owner = id;
partner.radius = partner.sprite_width + sprite_width;*/
gun = instance_create_layer(x, y, "Player", obj_arrow);
gun.owner = id;
gun.radius = sprite_width;
gun2dir = 0;

set_vars();

first_hit = L;
last_hit = false;
combo_now = ds_list_create();
combo121 = ds_list_create();
combo121[| 0] = 1;
combo121[| 1] =  2;
combo121[| 2] =   1;
combo1121 = ds_list_create();
combo1121[| 0] = 1;
combo1121[| 1] =  1;
combo1121[| 2] =   2;
combo1121[| 3] =    1;
combo11222 = ds_list_create();
combo11222[| 0] = 1;
combo11222[| 1] =  1;
combo11222[| 2] =   2;
combo11222[| 3] =    2;
combo11222[| 4] =     2;
combo11221 = ds_list_create();
combo11221[| 0] = 1;
combo11221[| 1] =  1;
combo11221[| 2] =   2;
combo11221[| 3] =    2;
combo11221[| 4] =     1;
combo11112 = ds_list_create();
combo11112[| 0] = 1;
combo11112[| 1] =  1;
combo11112[| 2] =   1;
combo11112[| 3] =    1;
combo11112[| 4] =     2;
combo111222 = ds_list_create();
combo111222[| 0] = 1;
combo111222[| 1] =  1;
combo111222[| 2] =   1;
combo111222[| 3] =    2;
combo111222[| 4] =     2;
combo111222[| 5] =      2;
combo111221 = ds_list_create();
combo111221[| 0] = 1;
combo111221[| 1] =  1;
combo111221[| 2] =   1;
combo111221[| 3] =    2;
combo111221[| 4] =     2;
combo111221[| 5] =      1;
combo111112 = ds_list_create();
combo111112[| 0] = 1;
combo111112[| 1] =  1;
combo111112[| 2] =   1;
combo111112[| 3] =    1;
combo111112[| 4] =     1;
combo111112[| 5] =      2;
/*combo11111111 = ds_list_create();
combo11111111[| 0] = 1;
combo11111111[| 1] =  1;
combo11111111[| 2] =   1;
combo11111111[| 3] =    1;
combo11111111[| 4] =     1;
combo11111111[| 5] =      1;
combo11111111[| 6] =       1;
combo11111111[| 7] =        1;
combo11111112 = ds_list_create();
combo11111112[| 0] = 1;
combo11111112[| 1] =  1;
combo11111112[| 2] =   1;
combo11111112[| 3] =    1;
combo11111112[| 4] =     1;
combo11111112[| 5] =      1;
combo11111112[| 6] =       1;
combo11111112[| 7] =        2;*/
combos = ds_list_create();
combos[| 0] = combo121;
combos[| 1] = combo1121;
combos[| 2] = combo11222;
combos[| 3] = combo11221;
combos[| 4] = combo11112;
combos[| 5] = combo111222;
combos[| 6] = combo111221;
combos[| 7] = combo111112;
//combos[| 8] = combo11111111;
//combos[| 9] = combo11111112;

bulls = 0;