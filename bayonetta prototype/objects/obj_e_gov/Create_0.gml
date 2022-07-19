maxHp = 200;
hp = maxHp;
spriteDefault = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move);
move.owner = id;
move.weight = 6;
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 0);
alarm_set(1, 5);

event_inherited();
dizzy_dmg = true;

wideCounter = 0;