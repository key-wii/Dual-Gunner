maxHp = 40;
hp = maxHp;
spriteDefault = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move2);
move.owner = id;
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 120);

event_inherited();
dizzy_dmg = true;
