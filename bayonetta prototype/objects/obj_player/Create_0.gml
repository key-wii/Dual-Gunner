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
combo1 = ds_list_create();
combo1[| 0] = 1;
combo1[| 1] = 2;
combo1[| 2] = 1;
combo2 = ds_list_create();
combo2[| 0] = 1;
combo2[| 1] = 1;
combo2[| 2] = 2;
combo2[| 3] = 1;
combo3 = ds_list_create();
combo3[| 0] = 1;
combo3[| 1] = 1;
combo3[| 2] = 2;
combo3[| 3] = 2;
combo3[| 4] = 2;
combo4 = ds_list_create();
combo4[| 0] = 1;
combo4[| 1] = 1;
combo4[| 2] = 1;
combo4[| 3] = 1;
combo4[| 4] = 2;
combo5 = ds_list_create();
combo5[| 0] = 1;
combo5[| 1] = 1;
combo5[| 2] = 1;
combo5[| 3] = 2;
combo5[| 4] = 2;
combo5[| 5] = 2;
combo6 = ds_list_create();
combo6[| 0] = 1;
combo6[| 1] = 1;
combo6[| 2] = 1;
combo6[| 3] = 1;
combo6[| 4] = 1;
combo6[| 5] = 1;
combo7 = ds_list_create();
combo7[| 0] = 1;
combo7[| 1] = 1;
combo7[| 2] = 1;
combo7[| 3] = 1;
combo7[| 4] = 1;
combo7[| 5] = 2;
combos = ds_list_create();
combos[| 0] = combo1;
combos[| 1] = combo2;
combos[| 2] = combo3;
combos[| 3] = combo4;
combos[| 4] = combo5;
combos[| 5] = combo6;
combos[| 6] = combo7;

bulls = 0;