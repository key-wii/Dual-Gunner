maxHp = 150;
hp = maxHp;
spriteDefault = sprite_index;
sprite_default = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move_dpg);
move.owner = id;
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 60);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();

spin = 0;
dizzyState = obj_e_big_dizzy;
charging = false;
chargeMax = 80;
chargeMin = 5;
charge = chargeMax;


dir_face = 1;

hyper = false;

gun = instance_create_layer(x, y, "Player", obj_arrow);
gun.owner = id;
gun.radius = sprite_width * .5 + 4;
gun2dir = 0;
prev_theta = direction;

prev_ang = image_angle;

set_vars();
pow = 15; //used for bumping into other enemies