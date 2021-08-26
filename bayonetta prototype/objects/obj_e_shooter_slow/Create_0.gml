y = room_height / 2;

hp = 40;
spriteDefault = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move3);
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 90);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();