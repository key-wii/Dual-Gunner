maxHp = 200;
hp = maxHp;
spriteDefault = sprite_index;
spriteHurt = spr_e_spread_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move);
move.owner = id;
move.edge = 0;
move.weight = 10;
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 0);
alarm_set(1, 5);
alarm_set(2, 0);

event_inherited();
dizzy_dmg = true;

wideCounter = 0;
minionMax = 3;
tooManyMinions = false;

minions[0] = obj_e_spawn;
minions[1] = obj_e_dizzy;
minions[2] = obj_e_shooter_ss;
minions[3] = obj_e_shooter_ss_still;