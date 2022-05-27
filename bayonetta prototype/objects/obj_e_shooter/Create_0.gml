hp = 40;
spriteDefault = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move2);
move.owner = id;
x_adjust = 0;
y_adjust = 0;

if (room != Room2) alarm_set(0, 70);
else alarm_set(0, 120);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();
dizzy_dmg = true;
