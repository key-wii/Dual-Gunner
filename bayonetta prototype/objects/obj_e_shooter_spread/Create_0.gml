y = room_height / 2;

hp = 40;
spriteDefault = sprite_index;
spriteHurt = spr_e_spread_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move);
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 60);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();