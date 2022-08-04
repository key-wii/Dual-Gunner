image_speed = 0;
sprite_default = sprite_index;
spriteHurt = spr_hurt;
hp = 10;
maxMp = 8;
//mp = global.mp;
hyper = false;

//y = room_height / 2;
x_adjust = 0;
y_adjust = 0;

dir_face = -1;

instance_create_layer(0, 0, "UI", obj_cursor);

comboUI = instance_create_layer(x, y, "UI", obj_combo);
comboUI.owner = id;
hpBar = instance_create_layer(x, y, "UI", obj_hp);
hpBar.owner = id;

mpGauge = instance_create_layer(x, y, "Player", obj_mp);
mpGauge.owner = id;
mpGauge.maxMp = maxMp;
//dwmpGauge.mp = mp;
enemyToFinish = instance_nearest(x, y, obj_e_dizzy);

//if (!instance_exists(obj_partner))
/*partner = instance_create_layer(x, y, "Player", obj_partner);
partner.hp = hp;
partner.owner = id;
partner.radius = partner.sprite_width + sprite_width;*/
gun = instance_create_layer(x, y, "Player", obj_arrow);
gun.owner = id;
gun.radius = sprite_width * .5 + 4;
gun2dir = 0;
prev_theta = direction;

prev_ang = image_angle;

//if (!instance_exists(obj_player_move))
move = instance_create_layer(x, y, "Player", obj_player_move);
move.owner = id;

set_vars();