maxHp = 60;
hp = maxHp;
spriteDefault = sprite_index;
spriteHurt = spr_e_spread_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move);
move.owner = id;
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 60);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();
dizzy_dmg = true;