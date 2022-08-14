/*maxHp = 1;
hp = maxHp;*/
dizzy = 0;
dizzy_dmg = false; //Become dizzy whenever taking damage
dizzyState = obj_e_dizzy;

bodyPart = false;
invincible = false;
shield = false;
pow = 1.5; //used for bumping into other enemies

damage_text = instance_create_layer(x, y, "UI", obj_text_dmg);
instance_destroy(damage_text);
textX_adjust = 0;
textY_adjust = 0;
textLen_adjust = 150;
textX = x + textX_adjust;
textY = y + textY_adjust;

hp_gauge = instance_create_layer(x, y, "UI", obj_hp_gauge);
instance_destroy(hp_gauge);
hpX_adjust = 0;
hpY_adjust = 0;
hpLen_adjust = 150;
hpX = x + hpX_adjust;
hpY = y + hpY_adjust;

minions = array_create();